# vim: set filetype=fish.cfg :
function fdde --wraps fd --description 'fd --extension'
  clear
  fd --extension $argv
  
end

