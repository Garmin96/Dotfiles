if status is-interactive
    # Commands to run in interactive sessions can go here
    # 运行fastfetch
    fish -c 'sleep 0.05; fastfetch'
end

set -U fish_greeting

oh-my-posh init fish --config ~/.poshthemes/robbyrussell.omp.json | source
