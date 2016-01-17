# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

# The default umask is now handled by pam_umask.
# See pam_umask(8) and /etc/login.defs.

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

#Java
export  JAVA_HOME=/usr/lib/java/jdk1.8.0_65/
export  CLASSPATH=$CLASSPATH:$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export  PATH=PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

#Scala
export SCALA_HOME=/usr/lib/scala/scala-2.10.4
export PATH=$PATH:$SCALA_HOME/bin

#Go
export GOROOT=/usr/lib/go
export GOPATH=~/workspace/go
export PATH=$PATH:$GOROOT/bin

