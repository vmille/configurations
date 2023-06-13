let-env config = {
    show_banner: false
    hooks: {
        pre_prompt: [{ ||
            let direnv = (direnv export json | from json)
            let direnv = if ($direnv | length) == 1 { $direnv } else { {} }
            $direnv | load-env
        }]
    }
}

alias config-nu = nano $nu.config-path
alias config-starship = nano ~/.config/starship.toml
source ~/.cache/starship/init.nu

clear
