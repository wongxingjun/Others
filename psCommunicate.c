#include <stdio.h>
#include <unistd.h>
int value=100;

int main()
{
	int pid=fork();
	if(!pid)
	{
		value=0;
		return 0;
	}
	printf("value=%d\n",value);
	return 0;
}