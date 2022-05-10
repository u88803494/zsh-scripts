# Initialize the repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "u88803494@gmail.com"'

# misc
alias cls='clear'
alias gbdallbranch='git stash && gco main && git branch | grep -v "main" | xargs git branch -D'
