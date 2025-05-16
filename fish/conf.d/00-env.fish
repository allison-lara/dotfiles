set -x EDITOR vim
set -x TZ 'America/Los_Angeles'
fish_add_path ~/bin
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x HOMEBREW_NO_ENV_HINTS true
set -x RIPGREP_CONFIG_PATH $HOME/.ripgreprc
set -x HERMIT_ROOT_BIN /opt/homebrew/bin/hermit
