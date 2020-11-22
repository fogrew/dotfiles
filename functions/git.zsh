# Outputs the current path
# Usage example (add all changed files from any folder):
# git add $(git_current_path)
# Using '--quiet' with 'symbolic-ref' will not cause a fatal error (128) if
# it's not a symbolic ref, but in a Git repo.
function git_current_path() {
  local ref
  ref=$(command git rev-parse --show-toplevel 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(command git rev-parse --show-toplevel 2> /dev/null) || return
  fi
  echo $ref
}

function grename() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 old_branch new_branch"
    return 1
  fi

  # Rename branch locally
  git branch -m "$1" "$2"
  # Rename branch in origin remote
  if git push origin :"$1"; then
    git push --set-upstream origin "$2"
  fi
}

local function pull_or_push() {
  if [ $# -eq 2 ]; then
    git $1 $2 `git rev-parse --abbrev-ref HEAD`
  else
    git $1 origin `git rev-parse --abbrev-ref HEAD`
  fi
}
function pull() { pull_or_push "pull" $@ }
function push() { pull_or_push "push" $@ }

function reset() {
  if [ $# -eq 0 ]; then
    git reset --hard
  else
    local curr_branch=`git rev-parse --abbrev-ref HEAD`
    git checkout $curr_branch $1
  fi
}

function gs() {
  if [ "$GIT_ALIASES_SHORTER_GIT_STATUS" -ne 1 ]; then; git status
  else; git status -sb; fi
}
# 

function co() {
  git fetch
  git checkout "$1"
  if [ "$GIT_ALIASES_SILENCE_GIT_STATUS" -ne 1 ]; then; git status; fi
}
compdef _git co=git-checkout

function cob() {
  git checkout -b "$1"
  if [ "$GIT_ALIASES_AUTOPUSH_NEW_BRANCH" -eq 1 ]; then
    git add "$(git_current_path)" && git commit -a -m "Started $1" && push
  fi
}

function cop() {
  git fetch && git checkout "$1" && pull && git fetch
  if [ "$GIT_ALIASES_SILENCE_GIT_STATUS" -ne 1 ]; then; git status; fi
}
compdef _git cop=git-checkout


function gcli() {
  local repo=$1 folder=$2
  local repo_name=$1
  while [ "${repo_name%%/*}" != "$repo_name" ]; do
     repo_name=${repo_name#*/}
  done
  repo_name=${repo_name%.*}
  git clone $1
  if $yes_cd; then; cd $repo_name; fi
  npm i
}


function np() {
  pull && git fetch && npm i
}

function conp() {
  co "$1" && npm i
}
compdef _git conp=git-checkout

function backmerge_branch() {
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  pull && cop $1 && co $curr_branch && git merge $1 -m 'Backmerged master' && push
  echo 'Backmerge completed.'
}

function backmerge() {
  backmerge_branch 'master'
}

function npm_backmerge() {
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  pull && conp master && reset && co $curr_branch && git merge origin/master -m 'Backmerged master' && push
  echo 'Backmerge completed. You may have to restart your local server.'
}

function backmerge_all() {
  git fetch
  local curr_branch=`git rev-parse --abbrev-ref HEAD`
  for branch in $(git for-each-ref --format='%(refname)' refs/heads/); do
    local branch=${branch/refs\/heads\//}
    echo "!!! Backmerging $branch ..."
    cop master
    co $branch && git merge origin/master -m 'Backmerged master' && push
  done 
  co curr_branch
}


function release() {
  if [ $# -eq 0 ]; then echo "You must pass a tag to release.";
  else cop master && git tag $1 && git push origin $1;
  fi
}


# TODO: add phpstorm, diff-so-fancy, sourcetree, git-diff-image
function dif() {
  if [ "$GIT_ALIASES_ICDIFF" -eq 1 ]; then; git icdiff
  elif [ "$GIT_ALIASES_ICDIFF" -eq 2 ]; then; git difftool --extcmd icdiff
  else; git diff; fi
  git status
}


function prune() {
  git branch -D "$1" && git push origin --delete "$1"
}

function git-delete-merged-branches() {
  if [[ $# != 1 ]]; then
    mergedInto="master"
  else
    mergedInto="$1"
  fi

  currentBranch=$(git symbolic-ref --short HEAD)
  if [[ "${currentBranch}" != "${mergedInto}" ]]; then
    echo "You have to be on the same git branch you're using as the merge target"
    exit 1
  fi

  git branch --merged "${mergedInto}" | grep -v "\* ${mergedInto}" | xargs -n 1 git branch -d

}

# git clone branch for review
funciton gclb() {
  git clone --recursive --branch $1 git@git.wrke.in:website/wg5.git $1 && cd $1 && npm ci
}


function oldbranches() {
  if [[ $# -eq 0 ]]; then; local hed=10; else; local hed=$1; fi
  echo $hed
  echo $#
  git for-each-ref --sort=committerdate --format='No updates to %(refname:short) since %(committerdate:short)...' | head -n $hed
}