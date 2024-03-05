function web-search -d "Search on the web"
    set -l search_engines \
    go 'https://www.google.com/search?q=' \
    yt "https://www.youtube.com/results?search_query=" \
    bing "https://www.bing.com/search?q=" \
    ddg "https://www.duckduckgo.com/?q=" \
    startpage "https://www.startpage.com/do/search?q=" \
    gh "https://github.com/search?q=" \
    ecosia "https://www.ecosia.org/search?q=" \
    goodreads "https://www.goodreads.com/search?q=" \
    qwant "https://www.qwant.com/?q=" \
    givero "https://www.givero.com/search?q=" \
    stack "https://stackoverflow.com/search?q=" \
    wolfram "https://www.wolframalpha.com/input/?i=" \
    archive "https://web.archive.org/web/*/" \
    scholar "https://scholar.google.com/scholar?q=" \
    aur "https://aur.archlinux.org/packages?K=" \
    aw  "https://wiki.archlinux.org/?search="    \
    gpo "https://gpo.zugaina.org/Search?search=" \
    searx "https://searx.org/search?q=" \
    br "https://search.brave.com/search?q=" \
    ud "https://www.urbandictionary.com/define.php?term=" \
    mw "https://www.merriam-webster.com/thesaurus/"
    # nixpkgs "https://search.nixos.org/packages?query=" \
    # nixoptions "https://search.nixos.org/options?query=" \

    set -l custom_env_engines (env | grep ^WEB_SEARCH)
    set -l custom_search_engines (string split '\n' $custom_env_engines)
    for engine in $custom_search_engines
        set -l search_engine (string split -m 1 = $engine)
        set -l context (echo $search_engine[1] | string sub -s 12)
        set -l url $search_engine[2]

        set -a search_engines $context $url
    end

    set -l context_idx (contains -i $argv[1] $search_engines)
    if not test -n "$context_idx"
        echo "'$argv[1]' is not supported."
        return 1
    end

    set -l url $search_engines[(math $context_idx + 1)] # + 1 in this case to get the url

    if test (count $argv) -ge 2
        set query (string escape --style=url $argv[2..-1])
    else
        set query ''
    end

    set -l open_cmd

    switch (uname)
        case Linux
            set open_cmd "nohup xdg-open"
        case Darwin
            set open_cmd "open"
    end

    eval "$open_cmd '$url$query' &> /dev/null & disown"
end
