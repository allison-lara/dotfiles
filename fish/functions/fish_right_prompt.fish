function fish_right_prompt --description 'Write out the right prompt'
	set_color normal
	printf "[%s@%s]" $USER (hostname -s)
end
