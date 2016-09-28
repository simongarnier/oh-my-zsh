# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host="%{$fg[white]%}->%{$reset_color%} %{$f/g[red]%}%n@%m%{$reset_color%}"
else
    local user_host="%{$fg[white]%}->%{$reset_color%} %n@%m%{$reset_color%} "
fi

local current_dir="%{$fg[white]%}->%{$reset_color%} %~"
local git_branch='$(git_prompt_info)'
local virtualenv='$(virtualenv_prompt_info)'
local ruby='${current_ruby}'

PROMPT="${virtualenv}${user_host}${current_dir}${git_branch}
%{$fg[white]%}->%{$reset_color%} "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}->%{$reset_color%} %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX="%{$fg[white]%}->%{$reset_color%} %{$fg[yellow]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%} "
