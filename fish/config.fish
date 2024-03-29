set -gx TERM xterm-256color

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vi="nvim"
alias vim="nvim"
alias ti="timer -t 00:10:00 -v 0.1"
alias cb="cargo build"
alias cr="cargo run"
alias cdoc="cargo doc --open"
alias rdoc="rustup docs"
alias ls="exa"
alias tmux='tmux -u'
alias t='tmux -u'
alias ga='git add'
alias gc='git commit -m'
alias gr='git remote'
alias gp='git push'
alias nf='neofetch --ascii_distro debian'

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 33467c
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g fish_greeting
set --universal nvm_default_version v18.16.1
set PATH $PATH ~/.cargo/bin

set -Ux ANDROID_HOME $HOME/Android/Sdk
# Add the Android emulator directory to the PATH
set -x PATH $PATH $ANDROID_HOME/emulator

# Add the Android platform-tools directory to the PATH
set -x PATH $PATH $ANDROID_HOME/platform-tools


starship init fish | source
