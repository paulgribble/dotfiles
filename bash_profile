# Document path
DOCPATH="/Users/plg/Dropbox\ \(SensorimotorSuperlab\)"
DP=$DOCPATH

# aliases
alias webbackup=$DOCPATH/scripts/./webbackup.sh
alias documentsbackup=$DOCPATH/scripts/./documentsbackup.sh
alias targ=$DOCPATH/scripts/./targ.sh
alias ll="/bin/ls -rtFlG"
alias gemacs="open -a /Applications/Emacs.app $1"
alias ia="open $1 -a /Applications/iA\ Writer.app"

# rsync with ssh and progress keep partial
# rsync -avzhe ssh --progress --partial --inplace source dest

# MATLAB
alias matlab="/Applications/MATLAB_R2017b.app/bin/./matlab"

# path for homebrew
export PATH=/usr/local/bin:$PATH

# added by Anaconda3 installer
export PATH="/Users/plg/anaconda3/bin:$PATH"
