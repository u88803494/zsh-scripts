# Initialize the repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "u88803494@gmail.com"'

# Eucare
## Debug scripts
alias ysp='yarn start:production'
alias yss='yarn start:staging'
alias ysd='yarn start:development'

## checkout
alias gcp='git checkout production'
alias gcs='git checkout staging'

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

yfa() {
  for i in ${eucarePaths[@]}; do
    $i && echo $i && gfpu &&
  done
}

# Initialize Eucare repository
alias gsetpuser='git config user.name "Hugh Lee" && git config user.email "hugh.lee@eucare.com.tw"'
