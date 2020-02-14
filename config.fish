function fish_mode_prompt
end

function fish_greeting
end

function fish_prompt
	set_color ffc425 
	printf "["
	set_color d11141
	printf "%s" "$USER"
	set_color 00b159
	printf " in "
	set_color 00aedb
	echo -n (prompt_pwd)	
	set_color ffc425 
	printf "] "
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
