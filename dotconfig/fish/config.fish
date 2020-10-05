########
# path #
########

# Pyenv setup
set -x PATH "$HOME/.pyenv/bin" $PATH
status --is-interactive; and . (pyenv init -|psub)
#status --is-interactive; and . (pyenv virtualenv-init -|psub)

# N (node version manager)
set -x N_PREFIX $HOME/n
set -x PATH $HOME/n/bin $PATH

# RVM (ruby version manager)
rvm default

# Go
set -x GOPATH $HOME/code/go
set -x PATH $GOPATH/bin $PATH

# Terraform
set -x TF_PLUGIN_CACHE_DIR $HOME/.terraform.d/plugin-cache

# Misc
set -x EDITOR "vim"

################
# key bindings #
################

# Support vi mode
fish_vi_key_bindings

##########
# legacy #
##########

# Support history expansion (i.e. !!)
function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
