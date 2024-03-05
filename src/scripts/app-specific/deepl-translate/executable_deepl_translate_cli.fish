#! /usr/bin/env fish


set DATA_DIR $HOME/src/scripts/app-specific/deepl-translate
set FZF_OPTS $DATA_DIR"/fzf_opts.txt"

set OPT (bat $FZF_OPTS | fzf)
echo $OPT

set INPUT (gum input --cursor.background="#f4005f" --cursor.bold --cursor.foreground="#ffffff" --header.bold  --header.background="#f4005f"  --header "[DEEPL-TRANSLATE-CLI]" --placeholder "title...")
echo $INPUT

switch $OPT
    case "SWEDISH -> ENGLISH"
        set URL "https://www.deepl.com/translator#sv/en/$INPUT"
    case "ENGLISH -> SWEDISH"
        set URL "https://www.deepl.com/translator#en/sv/$INPUT"
end

        open_in_qute $URL

# https://www.deepl.com/translator?share=generic#sv/en/hej
