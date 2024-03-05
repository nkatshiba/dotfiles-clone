function man --wraps page --description 'alias man=page'
    command man $argv | page
end
