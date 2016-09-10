#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#path(){
#	case ":$PATH:" in
#  *":$new_entry:"*) :;; # already there
#  *) PATH="$new_entry:$PATH";; # or PATH="$PATH:$new_entry"
#	esac
#}

alias ls='ls --color=auto'
#PS1='[ \u@ \W]\$ '
PS1="\[$(tput setaf 7)\]\[$(tput setaf 6)\]  \[$(tput bold setaf 6)\]\w\[$(tput setaf 7)\] \[$(tput sgr0)\] $ "

lampp (){
  sudo /opt/lampp/lampp "$1"
}
#command | pb --> example: dmesg | pb ile outputu yükler.
pb () {
  echo ptpb.pw/j7YS/text#L-123 -line123 icin
  curl -F "c=@${1:--}" https://ptpb.pw/
}

upgrade (){
  sudo pacman -Syy && sudo pacman -Su && pacaur -Su
}

mkcd () {
  mkdir "$1"
  cd "$1"
}

sassw() {
  echo 'sass --watch scss:css'
sass --watch scss:css
}

bs() {
	echo
	echo 'browser-sync start --server --files "*.html, css/*.css"'
	echo
	browser-sync start --server --files "*.html, css/*.css"
}

alias ..='cd ..'

#extract (file)
extract() {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xvf $1     ;;
        *.tar.gz)    tar xvzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xvzf $1    ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
 }

#To find and play audio straight from your terminal with mm "search terms"
function playau() {

  echo  mpv --no-video --ytdl-format=bestaudio --no-resume-playback ytdl://ytsearch10:"$@"
  mpv --no-video --ytdl-format=bestaudio --no-resume-playback ytdl://ytsearch10:"$@"
}
function playvi(){
 echo mpv --ytdl-format=bestvideo+bestaudio/best --no-resume-playback ytdl://ytsearch10:"$@"
 mpv --ytdl-format=bestvideo+bestaudio/best --no-resume-playback ytdl://ytsearch10:"$@"
}
