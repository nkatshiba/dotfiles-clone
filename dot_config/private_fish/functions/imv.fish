function imv -w 'imv' -d 'alias imv=imv -d -l $argv &;disown'
    command imv -d -l $argv &; disown
end
