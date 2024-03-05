# readloop
abbr -a readloop 'set FILE file.txt
bat $FILE | while read -l data
echo $data
end
'
