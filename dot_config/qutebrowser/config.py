# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

c.new_instance_open_target = 'tab-bg-silent'

c.auto_save.session = True

c.content.autoplay = True

# c.content.proxy = 'socks5://10.64.0.1'
# c.content.proxy = 'socks5://10.64.0.1'

# Darkmode
c.colors.webpage.darkmode.enabled = True
# lightness-cielab: Modify colors by converting them to CIELAB color space and inverting the L value. Not available with Qt < 5.14.
# lightness-hsl: Modify colors by converting them to the HSL color space and inverting the lightness (i.e. the "L" in HSL).
# brightness-rgb: Modify colors by subtracting each of r, g, and b from their maximum value.
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
# always: Apply dark mode filter to all images.
# never: Never apply dark mode filter to any images.
# smart: Apply dark mode based on image content. Not available with Qt 5.15.0.
# smart-simple: On QtWebEngine 6.6, use a simpler algorithm for smart mode (based on numbers of colors and transparency), rather than an ML-based model. Same as smart on older QtWebEnigne versions.
c.colors.webpage.darkmode.policy.images = 'never'
# auto: Use the system-wide color scheme setting.
# light: Force a light theme.
# dark: Force a dark theme.
c.colors.webpage.preferred_color_scheme = 'dark'


config.set('content.cookies.accept', 'all', 'chrome-devtools://*')

config.set('content.cookies.accept', 'all', 'devtools://*')

config.set('content.geolocation', True, 'https://wego.here.com')

c.content.geolocation = 'ask'

config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')

c.content.headers.accept_language = 'en-US,en;q=0.5'

c.content.headers.custom = {'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'}

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')

config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0', 'https://accounts.google.com/*')

c.content.blocking.method = 'both'

c.content.blocking.adblock.lists = ['https://easylist.to/easylist/easylist.txt', 'https://easylist.to/easylist/easyprivacy.txt']

config.set('content.images', True, 'chrome-devtools://*')

config.set('content.images', True, 'devtools://*')

config.set('content.javascript.enabled', True, 'chrome-devtools://*')

config.set('content.javascript.enabled', True, 'devtools://*')

config.set('content.javascript.enabled', True, 'chrome://*/*')

config.set('content.javascript.enabled', True, 'qute://*/*')

config.set('content.local_content_can_access_remote_urls', True, 'file:///home/tildavimer/.local/share/qutebrowser/userscripts/*')

config.set('content.local_content_can_access_file_urls', False, 'file:///home/tildavimer/.local/share/qutebrowser/userscripts/*')

c.content.pdfjs = False

c.downloads.location.directory = '/home/tildavimer/dlds'

c.completion.open_categories = ['quickmarks', 'searchengines', 'bookmarks', 'history', 'filesystem']

c.editor.command = ['kitty', '-e', 'nvim', '{file}']


c.editor.encoding = 'utf-8'

c.fileselect.handler = 'external'
# fish-fmt
c.fileselect.single_file.command = ['kitty', '-e', 'fish', '-C', 'set -x OUTPUT {}; source ~/.local/bin/fish-fm']
c.fileselect.multiple_files.command = ['kitty', '-e', 'fish', '-C', 'set -x OUTPUT {}; source ~/.local/bin/fish-fm']
# yazi
# c.fileselect.single_file.command = ['kitty', '-e', 'yazi', '--chooser-file', '{}']
# c.fileselect.multiple_files.command = ['kitty', '-e', 'yazi', '--chooser-file', '{}']
# vifm
# c.fileselect.folder.command = ['kitty', '-e', 'vifm', '--choose-dir', '{}']
# c.fileselect.folder.command = ['kitty', '-e', 'yazi', '--chooser-file', '{}']
c.fileselect.folder.command = ['kitty', '-e', 'yazi', '--cwd-file', '{}']

# CSS

c.input.insert_mode.auto_load = True

c.spellcheck.languages = ['en-US', 'sv-SE']

c.statusbar.padding = {'top': 2, 'right': 2, 'bottom': 2, 'left': 2}

c.tabs.favicons.scale = 1

c.tabs.padding = {'top': 2, 'right': 4, 'bottom': 2, 'left': 4}

c.tabs.select_on_remove = 'next'

c.tabs.indicator.width = 1

c.url.auto_search = 'naive'

c.url.default_page = 'about:blank'

c.url.searchengines = {
    # 'DEFAULT': 'https://priv.au/search?q={}&language=en&time_range=&safesearch=0&categories=general',
    # 'DEFAULT': 'https://duckduckgo.com/?q={}',
    # 'DEFAULT': 'https://www.startpage.com/sp/search?query={}',
    'DEFAULT': 'https://search.brave.com/search?q={}',
    'bry': 'https://search.brave.com/search?q={}&source=web&tf=py',
    # 'sv': 'http://priv.au/search?q={}&language=sv-SE&time_range=&safesearch=0&categories=general',
    # 'DEFAULT': 'https://sx.t-1.org/search?q={}',
    'sv': 'https://priv.au/search?q={}&language=sv&time_range=&safesearch=0&categories=general',
    'st': 'https://www.startpage.com/sp/search?query={}',
    'bi': 'https://www.bing.com/search?q={}&FORM=HDRSC1&showconv=0',
    'mo': 'https://www.mojeek.com/search?q={}&theme=dark&arc=se&t=20&size=1&hp=minimal&qsba=1&qss=Bing%2CBrave%2CDuckDuckGo%2CEcosia%2CLilo%2CMetager%2CQwant%2CStartpage%2CYou',
    'br': 'https://search.brave.com/search?q={}&source=web',
    'pre': 'https://presearch.com/search?q={}',
    'phi': 'https://phind.com/search?q={}',
    'uni': 'https://www.amp-what.com/unicode/search/{}',
    'song': 'https://www.songsterr.com/?pattern={}',
    'pri': 'https://www.pricerunner.se/results?q={}&suggestionsActive=true&suggestionClicked=false&suggestionReverted=false',
    'pris': 'https://www.prisjakt.nu/search?search={}',
    'yo': 'https://you.com/search?q={}&tbm=youchat',
    'yoi': 'https://you.com/search?q={}&fromSearchBar=true&tbm=isch',
    'yov': 'https://you.com/search?q={}&fromSearchBar=true&tbm=vid',
    'yon': 'https://you.com/search?q={}&fromSearchBar=true&tbm=nws',
    'yoa': 'https://you.com/search?q={}&fromSearchBar=true',
    'yos': 'https://you.com/search?q={}&fromSearchBar=true&tbm=social',
    'yosc': 'https://you.com/search?q={}&fromSearchBar=true&tbm=youstudy',
    'yoc': 'https://you.com/search?q={}&fromSearchBar=true&tbm=youcode',
    'dd': 'https://duckduckgo.com/?q={}',
    'ddi': 'https://duckduckgo.com/?q={}&iar=images&iax=images&ia=images',
    'go': 'https://www.google.com/search?hl=en&safe=off&num=50&pws=0&q={}',
    'gom': 'https://www.google.com/maps/search/{}',
    'gon': 'https://news.google.com/search?q={}',
    'goi': 'https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1',
    'tnya': 'https://nyaa.si/?f=0&c=1_0&q={}&s=seeders&o=desc',
    'trar': 'https://www2.rarbggo.to/search/?search={}&order=seeders&by=DESC',
    't13': 'https://1337x.to/sort-search/{}/seeders/desc/1/',
    'tdope': 'https://idope.skin/fullsearch?q={}',
    'tsol': 'https://solidtorrents.to/search?q={}&sort=seeders',
    'tfs': 'https://www.deepl.com/translator#sv/en/{}',
    'tfe': 'https://www.deepl.com/translator#en/sv/{}',
    'th': 'https://www.thesaurus.com/browse/{}',
    'mw': 'https://www.merriam-webster.com/thesaurus/{}',
    'sy': 'https://www.merriam-webster.com/thesaurus/{}',
    'cols': 'https://colorbase.app/colors/{}',
    'def': 'https://www.merriam-webster.com/dictionary/{}',
    'dic': 'https://thefreedictionary.com/{}',
    'ud': 'https://www.urbandictionary.com/define.php?term={}',
    'rr': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=all',
    'rrh': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=hour',
    'rrd': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=day',
    'rrw': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=week',
    'rrm': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=month',
    'rry': 'https://old.reddit.com/search/?q={}&sort=relevance&restrict_sr=&t=year',
    'rt': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=all',
    'rth': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=hour',
    'rtd': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=day',
    'rtw': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=week',
    'rtm': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=month',
    'rty': 'https://old.reddit.com/search/?q={}&sort=top&restrict_sr=&t=year',
    'rn': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=all',
    'rnh': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=hour',
    'rnd': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=day',
    'rnw': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=week',
    'rnm': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=month',
    'rny': 'https://old.reddit.com/search/?q={}&sort=new&restrict_sr=&t=year',
    'aw': 'https://wiki.archlinux.org/?search={}',
    'au': 'https://www.archlinux.org/packages/?sort=&q={}',
    'aur': 'https://aur.archlinux.org/packages?O=0&SeB=nd&K={}&outdated=&SB=p&SO=d&PP=50&submit=Go',
    'ab': 'https://bugs.archlinux.org/?project=5&string={}',
    'ghg': 'https://gist.github.com/search?q={}',
    'ghc': 'https://github.com/search?q={}&type=Code',
    'gh': 'https://github.com/search?o=desc&q={}&s=stars',
    'cb': 'https://codeberg.org/explore/repos?sort=moststars&q={}&language=',
    'tw': 'https://twitter.com/search?q={}',
    'od': 'https://odysee.com/$/search?q={}',
    'yt': 'https://yewtu.be/search?q={}',
    'im': 'https://www.imdb.com/find/?q={}&ref_=nv_sr_sm',
    'let': 'https://letterboxd.com/search/{}/',
    'pry': 'https://pry.sh/{}',
    'kk': 'http://xxxadulttorrent.org/search/0/0/0/2/{}',
    'un': 'https://unsplash.com/s/photos/{}',
    'ya': 'https://yandex.com/images/search?text={}',
    'tho': 'https://www.thomann.de/se/search_dir.html?sw={}',
    'yts': 'https://yts.mx/browse-movies/{}/all/all/0/seeds/0/all',
    'let': 'https://letterboxd.com/search/{}/',
    'tgal': 'https://torrentgalaxy.to/torrents.php?search={}&sort=seeders&order=desc',
    'tpb': 'https://thepiratebay.org/search.php?q={}',
}

c.url.start_pages = ['https://klockren.nu/']

c.zoom.default = '90%'


# tabs
c.colors.tabs.odd.fg = '#fec6e0'
c.colors.tabs.even.fg = '#fec6e0'
c.colors.tabs.odd.bg = '#4b132e'
c.colors.tabs.even.bg = '#4b132e'
## selected (fg/bg)
c.colors.tabs.selected.odd.fg = '#020202'
c.colors.tabs.selected.even.fg = '#020202'
c.colors.tabs.selected.even.bg ='#fb4099'
c.colors.tabs.selected.odd.bg = '#fb4099'
## pinned (fg/bg)
c.colors.tabs.pinned.odd.fg = '#020202'
c.colors.tabs.pinned.even.fg = '#020202'
c.colors.tabs.pinned.odd.bg = '#00f495'
c.colors.tabs.pinned.even.bg = '#00f495'
## selected pinned (fg/bg)
c.colors.tabs.pinned.selected.odd.fg = '#020202'
c.colors.tabs.pinned.selected.even.fg = '#020202'
c.colors.tabs.pinned.selected.odd.bg = '#fb4099'
c.colors.tabs.pinned.selected.even.bg = '#fb4099'
## tabs indicator
c.colors.tabs.bar.bg = '#020202'
c.colors.tabs.indicator.start = '#020202'
c.colors.tabs.indicator.stop = '#020202'
c.colors.tabs.indicator.error = '#ff5555'
c.colors.tabs.indicator.system = 'none'

# completions
c.colors.completion.fg = '#fec6e0'
c.colors.completion.odd.bg = '#4b132e'
c.colors.completion.even.bg = '#020202'
## completion selected
c.colors.completion.item.selected.bg = '#fcb740'
c.colors.completion.item.selected.fg = '#020202'
c.colors.completion.item.selected.border.top = '#020202'
c.colors.completion.item.selected.border.bottom = '#020202'
## completion match
c.colors.completion.match.fg = '#4074fb'
## completion category
c.colors.completion.category.fg = '#00f495'
c.colors.completion.category.bg = '#020202'
c.colors.completion.category.border.top = '#020202'
c.colors.completion.category.border.bottom = '#020202'
c.colors.completion.scrollbar.fg = '#7c40fb'
c.colors.completion.scrollbar.bg = '#020202'

# downloads
c.colors.downloads.bar.bg = '#020202'
c.colors.downloads.stop.bg = '#fb4099'
c.colors.downloads.system.bg = 'none'
c.colors.downloads.error.fg = '#fb4099'
c.colors.downloads.error.bg = '#282a36'

# hints
c.hints.border = '2px solid #fb4099'
c.colors.hints.fg = '#fbc740'
c.colors.hints.bg = '#4b132e'
c.colors.hints.match.fg = '#4074fb'

# statusbar
c.colors.statusbar.normal.fg = '#fb4099'
c.colors.statusbar.normal.bg = '#020202'
c.colors.statusbar.insert.fg = '#00f495'
c.colors.statusbar.insert.bg = '#020202'
c.colors.statusbar.passthrough.fg = '#00f495'
c.colors.statusbar.passthrough.bg = '#020202'
c.colors.statusbar.private.fg = '#e0e0e0'
c.colors.statusbar.private.bg = '#020202'
c.colors.statusbar.command.fg = '#4074fb'
c.colors.statusbar.command.bg = '#020202'
c.colors.statusbar.command.private.fg = '#4074fb'
c.colors.statusbar.command.private.bg = '#020202'
c.colors.statusbar.caret.fg = '#f4005f'
c.colors.statusbar.caret.bg = '#020202'
c.colors.statusbar.caret.selection.fg = '#ffb86c'
c.colors.statusbar.caret.selection.bg = '#282a36'
c.colors.statusbar.progress.bg = '#020202'
c.colors.statusbar.url.fg = '#f8f8f2'
c.colors.statusbar.url.error.fg = '#f4005f'
c.colors.statusbar.url.hover.fg = '#fdb777'
c.colors.statusbar.url.success.http.fg = '#ff8d74'
c.colors.statusbar.url.success.https.fg = '#fbc740'
c.colors.statusbar.url.warn.fg = '#f1fa8c'

# keyhint
c.colors.keyhint.fg = '#bd93f9'
c.colors.keyhint.suffix.fg = '#44475a'
c.colors.keyhint.bg = '#282a36'

# messages
c.colors.messages.error.fg = '#f4005f'
c.colors.messages.error.bg = '#282a36'
c.colors.messages.error.border = '#282a36'
c.colors.messages.warning.fg = '#f4005f'
c.colors.messages.warning.bg = '#282a36'
c.colors.messages.warning.border = '#282a36'
c.colors.messages.info.fg = '#6272a4'
c.colors.messages.info.bg = '#282a36'
c.colors.messages.info.border = '#282a36'

# prompts
c.colors.prompts.fg = '#8be9fd'
c.colors.prompts.bg = '#282a36'
c.colors.prompts.border = '1px solid #282a36'
c.colors.prompts.selected.bg = '#44475a'





# Default font families to use. Whenever "default_family" is used in a
# font setting, it's replaced with the fonts listed here. If set to an
# empty value, a system-specific monospace default is used.
# Type: List of Font, or Font
c.fonts.default_family = ['FiraCode Nerd Font Mono']

# Bindings for normal mode
config.bind(',nhl1', 'open -b https://old.reddit.com/user/aaronkaa')
config.bind(',nhl2', 'open -b https://old.reddit.com/user/illumiflo')
config.bind(';;', 'hint all hover')
config.bind('gQ', 'open -t qute://bookmarks/')
config.bind('<Alt+f>', 'hint all hover')
config.bind('<Ctrl+f>', 'hint --rapid links tab-bg')
config.bind('<Ctrl+v>', 'open -b {clipboard}')
config.bind('<Ctrl+x>', 'config-edit')
config.bind('>', 'tab-move +')
config.bind('<', 'tab-move -')
config.bind('D', 'hint all hover')
config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')
config.bind('O', 'cmd-set-text -s :open -b')
# config.bind('PP', 'open -- {primary}')
config.bind('R', 'reload -f')
#zoom
config.bind('<Ctrl+=>', 'zoom-in')
config.bind('<Ctrl+->', 'zoom-out')
#/zoom
config.bind('Ss', 'set')
config.bind(';mpv', 'hint links spawn --detach mpv --audio-device=pulse/audiorelay_Speaker {hint-url}')
# config.bind('a', 'tab-prev')
config.bind('B', 'cmd-set-text -s :bookmark-load -t')
config.bind('b', 'cmd-set-text :bookmark-add')
config.bind('b$', 'tab-focus -1')
config.bind('b0', 'tab-focus 1')
config.bind('bb', 'hint all tab')
config.bind('bj', 'tab-move -')
config.bind('bk', 'tab-move +')
config.bind('bp', 'tab-focus last')
config.bind('cc', 'download-cancel')
config.bind('cd', 'download-clear')
config.bind('co', 'tab-only')
config.bind('d', 'tab-close')
config.bind('g-', 'tab-focus last')
config.bind('gC', 'tab-clone')
config.bind('gn', 'tab-give')
config.bind('gN', 'cmd-set-text :tab-give ')
config.bind('gd', 'download')
config.bind('gf', 'view-source')
config.bind('gm', 'tab-move')
config.bind('gr', 'config-source ;; greasemonkey-reload')
config.bind('pP', 'open -- {clipboard}')
config.bind('pp', 'open -- {clipboard}')
config.bind('ppc', 'open -t -- {clipboard}')
config.bind('r', 'reload')
config.bind('sl', 'cmd-set-text :session-load ')
config.bind('ss', 'cmd-set-text :session-save ')
config.bind('t', 'cmd-set-text -sr :tab-focus')
config.bind('yc', 'tab-clone')
config.bind('zz', 'config-source ;; greasemonkey-reload ;; reload')
config.bind('ÄÄ', 'open -b about:blank ;; tab-focus -1')
config.bind('ää', 'open -b https://blackscreen.app/ ;; tab-focus -1')
config.bind('åå', 'open -b about:blank ;; tab-focus -1')
config.bind('yY', 'hint links yank')

# config.bind('<', 'cmd-set-text :open -b ZB - ')

# Bindings for insert mode
config.bind('<alt+e>', 'edit-text', mode='insert')
config.bind('<Ctrl+k>', 'edit-text', mode='insert')

# quickmarks

# config.bind('m', 'nop')
config.bind('ma', 'quickmark-save')
config.bind('md', 'quickmark-del')

# Bindings for [,]
config.bind(',cal', 'open -b https://outlook.office.com/calendar/view/week')
config.bind(',plain', 'open -b https://192.168.1.222:8443/')
config.bind(',plain2', 'open -b http://192.168.1.222:8080/')
config.bind(',can', 'open -b https://chalmers.instructure.com/')
config.bind(',od', 'open -b https://chalmers-my.sharepoint.com/personal/ybring_chalmers_se/_layouts/15/onedrive.aspx?isAscending=true&sortField=Modified&view=0')
config.bind(',ft', 'open -b https://www.friatider.se/')
config.bind(',hack', 'open -b https://www.hckrnws.com/top/1')
config.bind(',mail', 'open -b https://outlook.office.com/mail/')
config.bind(',pro', 'open -b https://mail.proton.me/u/0/inbox')
config.bind(',sam', 'open -b https://samnytt.se/')
config.bind(',sports', 'open -b https://old.reddit.com/r/sportsbook/search/?q=of+the+Day&sort=relevance&restrict_sr=on&t=day')
# config.bind(',jg', 'open -b https://www.justinguitar.com/classes/beginner-guitar-course-grade-two')
config.bind(',jg', 'open --window https://www.justinguitar.com/classes/beginner-guitar-course-grade-two')
config.bind(',dot', 'open -b https://repo.vimkat.com/dotfiles')
config.bind(',dark0', 'set colors.webpage.darkmode.enabled false;; set --print colors.webpage.darkmode.enabled')
config.bind(',dark1', 'set colors.webpage.darkmode.enabled true;; set --print colors.webpage.darkmode.enabled')
config.bind(',nb', 'open -b http://localhost:6789/')
config.bind(',si', 'open -b http://localhost:8080/')
config.bind(',app', 'open -b https://wiki.archlinux.org/title/list_of_applications')
config.bind(',neo', 'open -b https://neovimcraft.com/')
config.bind(',install', 'open -b https://wiki.archlinux.org/title/Installation_guide')
config.bind(',skiff', 'open -b https://app.skiff.com/mail/inbox')
config.bind(',del', 'open -b http://127.0.0.1:8112/')
config.bind(',p1', 'open -b https://www.pricerunner.se/')
config.bind(',p2', 'open -b http://prisjakt.nu/')
config.bind(',fast', 'open -b https://kagi.com/fastgpt')
config.bind(',hack', 'open -b https://www.hckrnws.com/top/1')

# VPS
config.bind(',let', 'open -b https://lowendtalk.com/categories/offers')
config.bind(',leb', 'open -b https://lowendbox.com/category/virtual-servers/')

### Srv ###########################################################
## nginx
config.bind(',,nginx', 'open -b https://nginx.vimkat.com/')
# config.bind(',,nginx', 'open -b http://212.193.3.135:81')
## portainer
config.bind(',,port', 'open -b https://212.193.3.135:9443')
## blog admin
config.bind(',,bloga', 'open -b https://blog.vimkat.com/ghost')
# config.bind(',,bloga', 'open -b http://212.193.3.135:2368/ghost')
## blog
config.bind(',,blogv', 'open -b https://blog.vimkat.com/')
# config.bind(',,blogv', 'open -b http://212.193.3.135:2368')
## dashboard
config.bind(',,dash', 'open -b https://dash.vimkat.com/')
# config.bind(',,dash', 'open -b http://212.193.3.135:3001')
## jellyfin
config.bind(',,jelly', 'open -b https://jelly.vimkat.com/')
# config.bind(',,jelly', 'open -b http://212.193.3.135:8096')
## alma
config.bind(',,repo', 'open -b https://repo.vimkat.com/')
# config.bind(',,repo', 'open -b http://212.193.3.135:6610')
## homarr 
config.bind(',,homarr', 'open -b https://home.vimkat.com/')
# config.bind(',,homarr', 'open -b http://212.193.3.135:7575')
## tasks
config.bind(',,tasks', 'open -b https://tasks.vimkat.com/')
# config.bind(',,tasks', 'open -b http://212.193.3.135:8090')
## teddit
config.bind(',,ted', 'open -b https://ted.vimkat.com/')
# config.bind(',,tasks', 'open -b http://212.193.3.135:8080')
## Transmission
config.bind(',,bit', 'open -b https://bit.vimkat.com/')
config.bind(',,del', 'open -b http://127.0.0.1:8112/')
## Syncthing
config.bind(',,synp', 'open -b https://sync.vimkat.com/')
config.bind(',,synl', 'open -b http://127.0.0.1:8384/')
## Radical
config.bind(',,rad', 'open -b https://rad.vimkat.com/')
## Ethercalc / Spreadsheets
config.bind(',,sheet', 'open -b https://sheets.vimkat.com/')
config.bind(',,spread', 'open -b https://sheets.vimkat.com/')
config.bind(',,jobs', 'open -b https://sheets.vimkat.com/jobs')


## Wikijs
config.bind(',,wiki', 'open -b https://wiki.vimkat.com/')

# IP
config.bind(',,212', 'cmd-set-text -s :open -b http://212.193.3.135:')
#------------------------------------------------------------------
# Lcl
config.bind(',,Aplain', 'open -b https://192.168.1.162:8443')
config.bind(',,Ajelly', 'open -b http://192.168.1.196:8096/')
###################################################################

# Userscripts
config.bind('<Ctrl+o>', 'spawn --userscript /home/xshiba/.config/qutebrowser/userscripts/qtofi tab')
config.bind('pdf', 'spawn --userscript site_to_pdf.sh {url}')
config.bind('<Ctrl+d>', 'spawn --userscript ~/.config/qutebrowser/userscripts/save2buku.fish')
config.bind('xx', 'spawn --userscript wl-copy.fish')
config.bind('xz', 'spawn --userscript wl-copy-y3.fish')
config.bind('gx', 'spawn --userscript send-tab-to-chromium.fish')


# config.bind('<Ctrl+d>', 'spawn --userscript ~/.config/qutebrowser/userscripts/add_quickmark.fish {url}')


# :bind gN spawn sitetopdf.sh {url}

### GPTs ##########################################################
config.bind('per', 'open -b https://perplexity.ai/')
config.bind('pep', 'open -b https://www.perplexity.ai/collections/Priv-T.LnTmbhS6KPTPBX.MBOIQ')
config.bind('phi', 'open -b https://phind.com/')
config.bind('pbi', 'open -b https://copilot.microsoft.com/')

# config.bind('phi', 'cmd-set-text -s :open -b phi')
#------------------------------------------------------------------
config.bind('zffr', 'open -b https://www.perplexity.ai/collections/ffr120-jSz1P25QREm.i6Yl01Lr8w')

### [QQ] ##########################################################
config.bind('QQ', 'cmd-set-text -s :open -b [QQ] -')

### [a] ###########################################################
config.bind('ahackn', 'open -b https://www.hckrnws.com/top/1')
config.bind('alob', 'open -b https://lobste.rs/')
config.bind('ahacks', 'cmd-set-text -s :open -b br site:news.ycombinator.com ')
config.bind('ared', 'cmd-set-text -s :open -b br site:reddit.com ')
config.bind('alet', 'cmd-set-text -s :open -b br site:letterboxd.com ')
config.bind('aim', 'cmd-set-text -s :open -b br site:imdb.com ')
config.bind('aur', 'cmd-set-text -s :open -b br site:archlinux.org ')
config.bind('apoker', 'open --window https://www.betsson.com/sv/poker')

###################################################################


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# Userscripts
###################################################################
# [old.reddit.com]
# import qutebrowser.api.interceptor
#
# def rewrite(request: qutebrowser.api.interceptor.Request):
#     if request.request_url.host() == 'www.reddit.com':
#         request.request_url.setHost('old.reddit.com')
#         try:
#             request.redirect(request.request_url)
#         except:
#             pass
#
# qutebrowser.api.interceptor.register(rewrite)
###################################################################
# teddit
import qutebrowser.api.interceptor
#
# def rewrite(request: qutebrowser.api.interceptor.Request):
#    if 'teddit.' in request.request_url.host() or 'reddit.' in request.request_url.host():
#        request.request_url.setHost('ted.vimkat.com')
#        try:
#            request.redirect(request.request_url)
#        except:
#            pass
#
# qutebrowser.api.interceptor.register(rewrite)
###################################################################
# yew
# def rewrite_yew(request: qutebrowser.api.interceptor.Request):
#    if request.request_url.host().endswith('.youtube.com'):
#        request.request_url.setHost('yewtu.be')
#        try:
#            request.redirect(request.request_url)
#        except:
#            pass
#
# qutebrowser.api.interceptor.register(rewrite_yew)
###################################################################



