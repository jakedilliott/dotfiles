# Copy this file into ~/.config/fish/

function fish_mode_prompt
end

function fish_greeting
fortune -s literature | cowsay -f moose
end

set color1 '#404373'
set color2 '#96A0D0'
set color3 '#FFB5CD'
set color4 '#E7ECFE'

function fish_prompt
  echo -n -s (set_color $color2) "$USER" (set_color normal) @ (set_color $color3) (prompt_hostname) ' ' (set_color normal) (prompt_pwd) (set_color $color4) '>> ' 
end

abbr p "sudo pacman"
abbr Ss "pacman -Ss"
abbr ps "pamac search"
abbr vpns "sudo systemctl start expressvpn"
abbr vpne "sudo systemctl stop expressvpn"
abbr hide "expressvpn connect smart"
abbr cl "clear"
abbr fishrc "vim ~/.config/fish/config.fish"
abbr vimrc "vim ~/.vimrc"
