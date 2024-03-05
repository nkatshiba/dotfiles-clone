#! /usr/bin/sh

if [ -z "$(git status -s -uno | grep -v '^ ' | awk '{print $2}')" ]; then
   gum confirm "Stage all?" && git add .
fi

TYPE=$(gum choose "Hotfix" "Done" "Broken" "Refactor" "Initialize" "Revert changes")
# SCOPE=$(gum input --placeholder "scope")

# Since the scope is optional, wrap it in parentheses if it has a value.
# test -n "$SCOPE" && SCOPE="($SCOPE)"

# Pre-populate the input with the type(scope): so that the user may change it
SUMMARY=$(gum input --value "$TYPE: " --placeholder "Imperative mood description of the change")
# DESCRIPTION=$(gum write --placeholder "Detailed description of the change")

# Commit these changes if user confirms
# gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
gum confirm "Commit changes?" && git commit -m "$SUMMARY"

# Push these changes if user confirms
gum confirm "Push changes?" && git push
