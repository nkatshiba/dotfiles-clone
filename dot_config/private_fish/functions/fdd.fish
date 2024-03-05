# vim: set filetype=fish.cfg :
function fdd --wraps fd --description 'fd /'
  fd $argv /
  
end

