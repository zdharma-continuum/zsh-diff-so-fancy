# Use as"command" (or as"program") feature of your plugin manager (like Zplug
# or Zplugin), this file will be then ignored. If no such feature is available
# in your plugin manager, load this plugin normally, this file will then set
# up $PATH for "git dsf" to work. This file can be also plainly sourced.

# See following web page for explanation of the line "ZERO=...":
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"
local diff_so_fancy_bin="${0:h}/bin"

if [[ -z "${path[(r)${diff_so_fancy_bin}]}" ]]; then
    path+=( "${diff_so_fancy_bin}" )
fi
