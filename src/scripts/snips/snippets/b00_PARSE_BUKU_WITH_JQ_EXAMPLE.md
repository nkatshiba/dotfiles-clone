# parse buku with jq
buku -p -j -f 2 | jq .[] | jq '.index, .uri, .tags'
