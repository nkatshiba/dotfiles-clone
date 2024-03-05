function tt -w 'taskbook' -d "alias tt=taskbook --task"
    clear -x
    taskbook --task "$argv"
    taskbook -l
end
