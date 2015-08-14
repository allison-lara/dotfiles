set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta

set -g __fish_git_prompt_show_upstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "⊕"
set -g __fish_git_prompt_char_dirtystate "Δ"
set -g __fish_git_prompt_char_untrackedfiles "."
set -g __fish_git_prompt_char_conflictedstate "⍉"
# -set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate $fish_color_command
set -g __fish_git_prompt_color_stagedstate $fish_color_quote
set -g __fish_git_prompt_color_invalidstate $fish_color_error
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate $fish_color_redirection

function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	# PWD
	set_color $fish_color_cwd
	echo -n (prompt_pwd)
	set_color normal

	printf '%s \n' (__fish_git_prompt)

	if not test $last_status -eq 0
        set_color $fish_color_error
	end

	echo -n 'λ '

	set_color normal
end
