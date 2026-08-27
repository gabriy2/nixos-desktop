if status is-interactive
end

set -g fish_greeting

starship init fish | source

alias rebuild 'sudo nixos-rebuild switch --flake /etc/nixos#nixos'

alias update 'sudo nix flake update --flake /etc/nixos'

alias gc 'sudo nix-collect-garbage -d'
