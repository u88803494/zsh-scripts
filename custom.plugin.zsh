# Initialize the repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "u88803494@gmail.com"'

# misc
alias cls='clear'
alias gbdallbranch='git stash && gco staging && git branch | grep -v "staging" | xargs git branch -D'
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"

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
alias psw="pnpm exec nx run web-practitioner:serve:development"
alias psa="pnpm exec nx run web-admin:serve:development"
alias psf="pnpm exec nx run web-staff:serve:development"
alias psp="pnpm exec nx run web-pharmacist:serve:development"
alias pswp="pnpm exec nx run web-patient:serve --configuration=development"
alias pss="pnpm db-sync && pst"

## Checkout
alias gcp='git checkout production'
alias gcs='git checkout staging'
alias gcsb='git checkout sandbox'

## Upgrade staging
alias gupdate="git stash save && git fetch && gcs && git pull origin staging"
alias gupdateweb="~/eucare/web && git stash save && git fetch && gcs && git pull origin staging"

## Sync newest staging
alias gsys="git fetch && gcs && gl && gco $(git branch --show-current) && git rebase origin/staging"

## Add a removed name branch for merge
alias gcbm="gp && git checkout -b $(git branch --show-current | sed "s/hugh\///") staging && gp && gco $(git branch --show-current)"

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
