#
# Fish completion definition for buku.
#
# Author:
#   Arun Prakash Jana <engineerarun@gmail.com>
#

complete -c taskbook -s a -l archive    -r --description 'Display archived items'
complete -c taskbook -s b -l begin      -r --description 'Start/pause task'
complete -c taskbook -s c -l check      -r --description 'Check/uncheck task'
complete -c taskbook -l clear           -r --description 'Delete all checked items'
complete -c taskbook -s y -l copy       -r --description 'Copy item description'
complete -c taskbook -s d -l delete     -r --description 'Delete item'
complete -c taskbook -s e -l edit       -r --description 'Edit item description'
complete -c taskbook -s f -l find       -r --description 'Search for items'
complete -c taskbook -s h -l help       -r --description 'Display help message'
complete -c taskbook -s l -l list       -r --description 'List items by attributes'
complete -c taskbook -s m -l move       -r --description 'Move item between boards'
complete -c taskbook -s n -l note       -r --description 'Create note'
complete -c taskbook -s p -l priority   -r --description 'Update priority of task'
complete -c taskbook -s r -l restore    -r --description 'Restore items from archive'
complete -c taskbook -s s -l star       -r --description 'Star/unstar item'
complete -c taskbook -s t -l task       -r --description 'Create task'
complete -c taskbook -s i -l timeline   -r --description 'Display timeline view'
complete -c taskbook -s v -l version    -r --description 'Display installed version'
