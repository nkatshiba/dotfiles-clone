# vim: set filetype=fish.cfg :
function fde --wraps fd --description 'fd --extension'
  clear
  cd /
  fd --extension $argv
  
end
