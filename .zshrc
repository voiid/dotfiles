export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git ruby brew npm vscode)

source $ZSH/oh-my-zsh.sh

# Git aliases
alias gs="git status"
alias log="git log"
alias tiny-log="log --pretty=oneline --abbrev-commit"
alias reflog="git reflog"
alias status="git status"
alias diff="git diff"
alias checkout="git checkout"
alias add="git add"
alias amend="git commit --amend"
alias commit="git commit -m"
alias push="git push origin"
alias pull="git pull origin"
alias rebase="git rebase origin/master"
alias continue="git rebase --continue"
alias skip="git rebase --skip"
alias abort="git rebase --abort"
alias branch="checkout -b"
alias branches="git branch"
alias cherry="git cherry-pick"
alias move="git mv"
alias fetch="git fetch origin"
alias bye-branch="git branch -D"
alias stash="git stash"
alias pop="git stash pop"
alias reset="git reset HEAD"
alias undo-last="git reset --soft HEAD~1"
alias show="git show"
alias rename="git branch -m"
alias unstage="git restore --staged"
alias master="checkout master"
alias restore "checkout origin/master --"
alias branches="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short) %(committername)' | column -t"
alias branch-diff="git diff $(git merge-base HEAD origin/master)"
alias find-in-history="git rev-list --all | xargs git grep"
alias wip="add . && commit 'WIP'"
alias undo-wip="undo-last && reset ."

interactive() {
  git rebase -i HEAD~"$1"
}

# Project-specific aliases
alias bye-staging="bye-branch staging"
alias hello-staging="checkout -b staging"
alias deploy-staging="bye-staging && hello-staging && push +staging"
alias type-check="yarn run type-check"
alias check="yarn run check && yarn test"
alias test="yarn test"
alias seed="rails db:seed:thin"
alias policial="git diff master --diff-filter=d --name-only | xargs rubocop"
alias schema="rake graphql:schema:dump"
alias start="dev sv stop; dev up && dev debug"

# General aliases
# alias profile="code ~/.zshrc"
alias find-port="ps aux | grep"
# alias find-3100="lsof -i:3100"
# alias kill-3100="kill -9 $(lsof -t -i:3100)"
alias reload="exec zsh"
