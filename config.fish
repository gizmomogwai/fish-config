if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

switch (uname)
  case Linux
    set -x ck_os linux
    set -x EDITOR emacsclient

    # diab
    set -x PATH ~/bin/diab/5.9.6.4/LINUX386/bin $PATH
    set -x LM_LICENSE_FILE ~/.diab-license-f01faf5deb28

    # t32
    set -x PATH ~/bin/t32/2019-02/bin/pc_linux64 $PATH

    # tasking
    set -x PATH ~/bin/tasking/6.3/TriCore/ctc/bin $PATH
    set -x TSK_OPTIONS_FILE_SW160800v6_3r1 ~/bin/tasking/licopt.txt
    # cmake
    set -x PATH ~/bin/cmake/3.15.4/bin $PATH
    set -x ADB_VENDOR_KEYS $HOME/.android/adbkey:$HOME/.android/esrlabs.key

    # fzf
    set -x PATH ~/.fzf/bin $PATH

  case Darwin
    set -x ck_os osx
    set -x HOMEBREW_EDITOR emacs
    set -x PATH ~/bin/repo/google $PATH    

  case '*'
    echo "unknown os"
end

set -x PATH ~/bin $PATH
set -x PATH ~/.magit $PATH
set -x PATH ~/bin/$ck_os $PATH

rvm ruby-2.6.3@global

