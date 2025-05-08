# Initialize the repository
alias gsetuser='git config user.name "Henry Lee" && git config user.email "yuhao@hismax.onmicrosoft.com"'

# misc
alias cls='clear'
alias gbdallbranch='git stash && gco main && git branch | grep -v "main" | xargs git branch -D'

## Checkout
alias gcp='git checkout production'
alias gcs='git checkout staging'
