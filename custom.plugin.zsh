# Initialize the repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "u88803494@gmail.com"'

# misc
alias cls='clear'
alias gbdallbranch='git stash && gco staging && git branch | grep -v "staging" | xargs git branch -D'

# Eucare
alias gsetuser='git config user.name "Hugh Lee" && git config user.email "hugh.lee@eucare.com.tw"'

## Debug scripts
### yarn
alias ysb="yarn start:sandbox"
alias ysd='yarn start:development'
alias ysp='yarn start:production'
alias yss='yarn start:staging'

### pnpm
alias pdsb="pnpm dev:sandbox"
alias pdd='pnpm dev:development'
alias pdp='pnpm dev:production'
alias pds='pnpm dev:staging'

### pnpm for mono repo
alias gapc="gaa && pnpm cz"
alias psw="pnpm exec nx serve web-practitioner --configuration=development"
alias psa="pnpm exec nx serve web-admin --configuration=development"

## checkout
alias gcp='git checkout production'
alias gcs='git checkout staging'
alias gcsb='git checkout sandbox'

## Upgrade packages
alias gfpu="git stash save && git fetch && gcs -f && git pull origin staging"
alias gfw="~/eucare/web && git stash save && git fetch && gcs -f && git pull origin staging"

## Automatic processing
eucarePaths=(
  "/Users/hughlee/eucare/center"
  "../e-api"
  "../e-app"
  "../e-center"
  "../web"
)

# Initialize Eucare repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "hugh.lee@eucare.com.tw"'
