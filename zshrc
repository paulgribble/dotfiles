# Document path
DOCPATH="/Users/plg/Dropbox\ \(SensorimotorSuperlab\)"
DP=$DOCPATH

# aliases
alias webbackup=$DOCPATH/scripts/./webbackup.sh
alias documentsbackup=$DOCPATH/scripts/./documentsbackup.sh
alias bb=$DOCPATH/scripts/./bb.sh
alias uu=$DOCPATH/scripts/./uu.sh
alias rr=$DOCPATH/scripts/./rr.sh
alias targ=$DOCPATH/scripts/./targ.sh
alias ll="/bin/ls -rtFlG"
alias lls="/bin/ls -FlG"
alias gemacs="open -a /Applications/Emacs.app $1"
alias ia="open $1 -a /Applications/iA\ Writer.app"

# color prompt
#export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

source /usr/local/Cellar/zsh-git-prompt/0.5/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

## rsync with ssh and progress keep partial
# rsync -avhe ssh --progress --partial --inplace source dest

# MATLAB
alias matlab="/Applications/MATLAB_R2019b.app/bin/./matlab"

# pandoc aliases
alias ppdf=$DOCPATH/scripts/./ppdf.sh

# path for homebrew
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# homebrew cleanup env variable
export HOMEBREW_INSTALL_CLEANUP

# # >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/plg/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/plg/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/plg/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/plg/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# ## <<< conda initialize <<<

