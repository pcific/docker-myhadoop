#!/bin/sh

PS1="\[\e[90m\]\h:\u:\$PWD\\$ \[\e[m\]" && export PS1
LANG=C && export LANG

[ -d "$HOME/bin" ] && export PATH=$HOME/bin:$PATH
[ -d "$HOME/.local/bin" ] && export PATH=$HOME/.local/bin:$PATH

export JAVA_HOME=/jdk180 && export PATH="${JAVA_HOME}/bin:${PATH}" 
export HADOOP_HOME=/hadoop && export HADOOP_PREFIX=/hadoop 
export HADOOP_CONF_DIR=/hadoop/conf && export YARN_CONF_DIR=/hadoop/conf
export PATH="${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin:${PATH}"

T=LOGO which figlet >/dev/null && figlet `hostname` && echo ''
# JAVA_HOME=`ls -d /APP/jdk180 /jdk180 /app/jdk180 2>/dev/null |tail -1` && [ -n "$JAVA_HOME" ] && export PATH=$JAVA_HOME/bin:$PATH

alias ll='ls -rtl' && alias llh='ls -alh'
alias lsport='sudo netstat -ntlp'
alias govms='cd /vms 2>/dev/null ||cd /VMS 2>/dev/null ||cd /*/vms 2>/dev/null ||cd /*/VMS 2>/dev/null '
alias godom='cd /hadoop 2>/dev/null ||cd /app 2>/dev/null ||cd /*/domains 2>/dev/null '
alias doenv=' . ./setEnv.sh 2>/dev/null || . /vms/setEnv.sh 2>/dev/null || . /tmp/setEvn.sh 2>/dev/null || . /app/setEnv.sh 2>/dev/null ' 
#alias ps='ps -e -o user,pid,ppid,pcpu,vsz,rss,bsdstart,bsdtime,cmd '

alias psef='ps -ef|grep java|grep hadoop|grep -v grep ; echo "" ; docker ps '
alias find='sudo \find -L '
alias tailf='ls -rt1 logs/*out; echo "" ; ls -rt1 logs/*out|tail -1|xargs tail -f '


