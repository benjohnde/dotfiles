export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME

export ANDROID_SDK="/Users/bjohn/Library/Android/sdk/platform-tools"
export PATH=$PATH:$ANDROID_SDK

alias ll='ls -lah'
alias wget='wget --no-check-certificate'

function finder {
  osascript 2>/dev/null <<EOF
    tell application "Finder"
      return POSIX path of (target of window 1 as alias)
    end tell
EOF
}

export MARKPATH=$HOME/.marks

function jump {
  mark=$(head -n 1 "$MARKPATH/$1" 2>/dev/null)

  if [[ $mark != '' ]]; then
    cd $mark
  else
    echo "No such mark: $1"
  fi
}

function mark {
  mkdir -p "$MARKPATH"; echo "$(pwd)" > "$MARKPATH/$1"
}

function unmark {
  rm -i "$MARKPATH/$1"
}

function marks {
  find "$MARKPATH" -type f | while read filename
  do
    printf "%-12s -> %s\n" $(basename ${filename}) $(head -n 1 ${filename})
  done
}

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias coffee='sh ~/.coffee/coffee.sh' # handy shortcut for coffee-counter
export PATH="$HOME/.yarn/bin:$PATH"
