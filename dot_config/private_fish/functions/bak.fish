function bak
    udevil mount /dev/sdc1
    z /media/BACKUP
    pwdcp
    eza --classify --sort modified -1
end
