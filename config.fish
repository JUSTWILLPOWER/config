set -g -x RANGER_LOAD_DEFAULT_RC FALSE
fish_default_key_bindings
alias ra "ranger"
set fish_greeting '  HELLO WILLPOWER!'
set PATH /home/willpower/.local/bin/ $PATH
function pw
	pwd
end
function at
	sudo apt-get update
end
function vf
	vim /home/willpower/.config/fish/config.fish
end
# Emulates vim's cursor shape behavior
# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore
# The following variable can be used to configure cursor shape in
# visual mode, but due to fish_cursor_default, is redundant here
set fish_cursor_visual block
function fish_right_prompt
	set m_time (string split ' ' (date))
		echo $m_time[4] $m_time[5]
end
