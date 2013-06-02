local success_color=$'%{\e[38;5;38m%}'
local failure_color=$'%{\e[38;5;227m%}'
local path_color=$'%{\e[38;5;61m%}'
local spork_color=$'%{\e[38;5;31m%}'
local vcs_color=$'%{\e[38;5;248m%}'
local stash_color=$'%{\e[38;5;148m%}'
local user_color=$'%{\e[38;5;194m%}'
local host_color=$'%{\e[38;5;194m%}'

local user="%{$user_color%}%n%{$reset_color%}"
local host="%{$host_color%}$(echo ${HOST%%.*}| tr '[a-z]' '[A-Z]')"

PROMPT="${host} ${user}%{${reset_color}%} %(?,%{$success_color%}☁%{$reset_color%},%{$failure_color%}☁%{$reset_color%})  "

SPORK_INFO=$'%{$spork_color%}$(spork_process)%{${reset_color}%}'
VCS_INFO="%1(v|%{$vcs_color%}%1v%f%F{$stash_color%}%2v%f|)"

RPROMPT="${SPORK_INFO}${VCS_INFO}$path_color%}[%~]%{${reset_color}%}"
