# Fundle plugin management
fundle plugin 'edc/bass'
fundle init

# Support vi mode
fish_vi_key_bindings

# Support !!
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

# Pyenv setup
set -x PATH "/home/mdavis/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)

# N setup
set -x N_PREFIX /home/mdavis
set -x PATH /home/mdavis/n/bin $PATH
