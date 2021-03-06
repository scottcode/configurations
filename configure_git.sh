#!/usr/bin/env bash


# set up for me
git config --global user.email scott.hajek@gmail.com
git config --global user.name scottcode

# customize
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global push.default simple
# vim
git config --global core.editor vim
# vimdiff
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff
git config --global difftool.prompt false

# git aliases
git config --global alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit"
git config --global alias.lola "log --graph --decorate --pretty=oneline --abbrev-commit --all"

# set up bash aliases; presumes ~/.bashrc sources ~/.bash_aliases
echo "
alias g='git'
alias gco='git checkout'
alias gpo='git push origin'
alias gcmp='gcm && gpo'
alias gcd='gco develop'
alias gb='git branch'
alias gba='gb -a'
alias ga='git add'
alias gai='git add -i'
alias gap='git add -p'
alias gc='git commit'
alias gcm='git commit -m "Checkpoint commit."'
alias gpu='git push'
alias gpl='git pull'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gg='git grep -n'
alias gds='git diff --staged'
alias gre='git checkout -- '
alias gus='git reset HEAD'
alias gll='git lol'
alias gla='git lola'
alias gpod='gpo develop'
alias gpom='gpo master'
# git 'fuck it' (let's push it live)
alias gfi='git add -A && git commit -m \"Checkpoint.\" && git push'

gk() {
	   (gitk > /dev/null 2>&1) &
   }
" >> ~/.bash_aliases

# password cacher
git config credential.helper 'cache --timeout=30'
