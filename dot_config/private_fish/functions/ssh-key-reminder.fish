function ssh-key-reminder
    if test $IS_SSH_KEY_SET
    else
        ssh-add $HOME/.ssh/id_ed25519
        set -U IS_SSH_KEY_SET true
    end

end
