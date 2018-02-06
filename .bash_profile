export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$PATH:$JAVA_HOME

export ANDROID_HOME="/Users/bjohn/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME

export ANDROID_SDK="/Users/bjohn/Library/Android/sdk/platform-tools"
export PATH=$PATH:$ANDROID_SDK

export ANDROID_AAPT="/Users/bjohn/Library/Android/sdk/build-tools"
export PATH=$PATH:$ANDROID_AAPT

export ANDROID_TOOLS="/Users/bjohn/Library/Android/sdk/tools"
export PATH=$PATH:$ANDROID_TOOLS

alias ll='ls -lahF'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

function finder {
  osascript 2>/dev/null <<EOF
    tell application "Finder"
      return POSIX path of (target of window 1 as alias)
    end tell
EOF
}

export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
