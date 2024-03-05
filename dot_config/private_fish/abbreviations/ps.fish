# ps
abbr -a psm10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -10'
abbr -a psm50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -50'
abbr -a psc10 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -10'
abbr -a psc50 'ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%cpu | head -50'

