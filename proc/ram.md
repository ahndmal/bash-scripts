
## Find process

- pidof
- pgrep
- ps aux

```
top
ps ax | grep XXX
```

Find id of process:


```
pidof XXX
pidof java    
```
```
pgrep XXX
pgrep java
```

-- How to find the Process ID (PID) of a running terminal program?

``` pstree | grep XXX ```

### proc/{PID}/statm

To monitor only your process you can check /proc/PID/status or /proc/PID/statm.

After doing cat /proc/PID/statm you should see this:

``` 611450 185001 883 18 0 593431 0 ```
Explanation:
- size :- total program size (611450 X 4096/1024 = 2445800kB = 2388M)
- resident :- resident set size (185001 X 4096/1024 = 740004kB = 722M)
- share :- shared pages (883 X 4096 = 3532)
- trs :- text (code) (18 X 4096/1024 = 72kB = VmExe )
- drs :- data/stack
- lrs :- library (593431 X 4096/1024 = 2373724kB = VmData +VmStk)
- dt :- dirty pages

Also you can log the memory activity for your process doing a loop using date and cat.

### ps + awk

```bash
    ps -eo size,pid,user,command --sort -size | \
    awk '{ hr=$1/1024 ; printf("%13.2f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' |\
    cut -d "" -f2 | cut -d "-" -f1
```
