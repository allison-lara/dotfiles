set -x EDITOR vim
set -x TZ 'America/Los_Angeles'
fish_add_path ~/bin
fish_add_path /home/homebrew/bin
fish_add_path /home/homebrew/sbin
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x HOMEBREW_NO_ENV_HINTS true
