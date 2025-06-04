if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
starship init fish | source
source ~/.venv/bin/activate.fish
export EDITOR=nvim
alias cdp 'cd $(git rev-parse --show-toplevel)'
