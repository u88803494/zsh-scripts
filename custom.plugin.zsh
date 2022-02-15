
# WishMobile
## misc
alias gfp="git stash save && gcd -f && git fetch wish && git pull wish $1 && git push origin $1"
alias gfpd="gfp develop"
alias yc="yarn compile"
alias yf="yarn format"

## Automatic processing
wishMobilePaths=(
  "/home/hugh/repository/mobile/api"
  "../base"
  "../core"
  "../home"
  "../member"
  "../network"
  "../ui"
)

yfa() {
  for i in ${wishMobilePaths[@]}; do
    $i && echo $i && gfpd &&
  done
}

yina() {
  for i in ${wishMobilePaths[@]}; do
    $i && echo $i && gsta && gco . && gcd -f && yin &&
  done
}

codeall() {
  for i in ${wishMobilePaths[@]}; do
    $i && code $i &&
  done
}

## Update repository scripts
alias yupreact="yup eslint react-scripts --latest && yup && rm -rf .eslintrc.yml && npx eslint --init"
alias yreinstall="rm -rf node_modules yarn.lock package-lock.json && yin"

## Wish Mobile setting
alias gfw='git fetch wish master'
alias gpwm='git pull wish master'
alias gfwd='git fetch wish develop'
alias gpwd='git pull wish develop'

## Initialize the repository of clone
alias gsetuser='git config user.name "Hugh Lee" && git config user.email "hugh_lee@linkwish.com" && git remote add wish'
