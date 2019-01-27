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
alias gemacs="open -a /Applications/Emacs.app $1"
alias ia="open $1 -a /Applications/iA\ Writer.app"

# color prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

## rsync with ssh and progress keep partial
# rsync -avzhe ssh --progress --partial --inplace source dest

# MATLAB
alias matlab="/Applications/MATLAB_R2018a.app/bin/./matlab"

# pandoc aliases
alias ppdf=$DOCPATH/scripts/./ppdf.sh

# added by Anaconda3 installer
export PATH="/Users/plg/anaconda3/bin:$PATH"

# path for homebrew
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# homebrew cleanup env variable
export HOMEBREW_INSTALL_CLEANUP
