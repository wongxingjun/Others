#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif
#include <stdio.h>
#include <math.h>

float f(float x, float y, float z) {
	float a = x * x + 9.0f / 4.0f * y * y + z * z - 1;
	return a * a * a - x * x * z * z * z - 9.0f / 80.0f * y * y * z * z * z;
}

float h(float x, float z) {
	float y;
	for ( y = 1.0f; y >= 0.0f; y -= 0.001f)
		if (f(x, y, z) <= 0.0f)
			return y;
	return 0.0f;
}

int main() {
	FILE* fp = fopen("heart.ppm", "w");
	int sw = 512, sh = 512;
	fprintf(fp, "P3\n%d %d\n255\n", sw, sh);
	float z,x,v,y0,ny,nx,nz,nd,d,sy,sx;
	for (sy = 0; sy < sh; sy++) {
		z = 1.5f - sy * 3.0f / sh;
		for (sx = 0; sx < sw; sx++) {
			x = sx * 3.0f / sw - 1.5f;
			v = f(x, 0.0f, z);
			int r = 0;
			if (v <= 0.0f) {
				y0 = h(x, z);
				ny = 0.001f;
				nx = h(x + ny, z) - y0;
				nz = h(x, z + ny) - y0;
				nd = 1.0f / sqrtf(nx * nx + ny * ny + nz * nz);
				d = (nx + ny - nz) / sqrtf(3) * nd * 0.5f + 0.5f;
				r = (int)(d * 255.0f);
			}
			fprintf(fp, "%d 0 0 ", r);
		}
		fputc('\n', fp);
	}
	fclose(fp);
	return 0;
}
