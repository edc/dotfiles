# we have to define keybinding in a function and repoint $fish_key_bindings to
# the function. See the cause here:
#
# http://www.mail-archive.com/fish-users@lists.sourceforge.net/msg02024.html

function x
    fish_default_key_bindings
    builtin bind \cl forward-char
end

set fish_key_bindings x
