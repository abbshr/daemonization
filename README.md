How to daemonize a process
===

in short:

1. In parent process: fork
2. In parent process: exit
3. In child process: setuid
   maybe...  
   3.1. In child process: fork again => child process B  
   3.2. In child process: exit  
   3.3. In child process B: setuid  

4. In child process (maybe B): set umask
5. In child process (maybe B): set I/O redirection
6. In child process (maybe B): close other fds
7. In child process (maybe B): change workdir to /
8. In child process (maybe B): fork/exec the process to run

## In Bash

(Warning: Just worked in Linux)

```bash
# Usage
./daemonize.sh [command]
```

```bash
ps -ef | grep daemonize.sh
# PPID => 1 (init)
```