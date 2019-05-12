local success_color=$'%{\e[38;5;38m%}'
local failure_color=$'%{\e[38;5;227m%}'
local path_color=$'%{\e[38;5;14m%}'
local vcs_color=$'%{\e[38;5;248m%}'
local stash_color=$'%{\e[38;5;38m%}'

PROMPT="%(?,%{$success_color%}☁%{$reset_color%},%{$failure_color%}☁%{$reset_color%})  "
VCS_INFO="%1(v|%{$vcs_color%}%1v%f%F{$stash_color%}%2v%f|)"
RPROMPT="${VCS_INFO}$path_color%}[%~]%{${reset_color}%}"
