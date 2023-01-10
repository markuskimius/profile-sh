# profile-sh
a bash script profiling tool


# Usage

```bash
$ record-sh ./fibonacci.sh 10
89
$ report-sh ./profile.out
    1239|./fibonacci.sh|
     113|./fibonacci.sh|main main
    2743|./fibonacci.sh|main main fib
    2655|./fibonacci.sh|main main fib fib
    5244|./fibonacci.sh|main main fib fib fib
    9831|./fibonacci.sh|main main fib fib fib fib
   22597|./fibonacci.sh|main main fib fib fib fib fib
   36948|./fibonacci.sh|main main fib fib fib fib fib fib
   40756|./fibonacci.sh|main main fib fib fib fib fib fib fib
   19147|./fibonacci.sh|main main fib fib fib fib fib fib fib fib
    3980|./fibonacci.sh|main main fib fib fib fib fib fib fib fib fib
     143|./fibonacci.sh|main main fib fib fib fib fib fib fib fib fib fib
$
```

`record-sh` runs a bash script and records its profile data in `profile.out`.

`report-sh` produces a report from the profile file.
The first column is the number of microseconds spent in the stackframe.
The second column is the name of the script of the stackframe.
The third column is the stackframe within the script.


# Installation

profile-sh requires [dpm].  Install dpm first then run the following command to
install profile-sh:

```bash
$ dpm install https://github.com/markuskimius/profile-sh.git
```

Then log out and log back in.


## Credit

Inspired by [FlameGraph].


## License

[GPLv2]


[FlameGraph]: <https://github.com/brendangregg/FlameGraph>
     [GPLv2]: <https://github.com/markuskimius/common/blob/main/LICENSE>
       [dpm]: <https://github.com/markuskimius/dpm>
