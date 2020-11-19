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
function au
	sudo apt-get upgrade
end
function vf
	vim /home/willpower/.config/fish/config.fish
end
function gt
	git status
end
function gc
	git commit -m
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
		set x (string split '' $m_time[4])
		set y (string split '' $m_time[5])
		set z (string split '' $m_time[2])
		set m (string split '' $m_time[3])
		echo -s  $z[1..2] -
		echo -s  $m[1..2] \\
		echo -s  $x[3]\\
		echo -s  $y[1..5]
end
function fish_title
    echo fish (status current-command) ' '
    pwd
end
