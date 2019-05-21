# Mac OS installation.

### Requirement:

#### Common
- Nodejs
- python2 and python3
- yarn
- npm/yarn install -g neovim

- .zshrc/.bashrc:
```
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
--color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
--color info:108,prompt:109,spinner:108,pointer:168,marker:168
'
```
```

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

```

###### MacOS
- brew install smlnj mlton rlwrap ctags
- brew install the_silver_searcher
- gem install neovim-ruby-host neovim
- brew install fzf


##### Arch/Manjaro
- sudo pacman -S mlton rlwrap smlnj
- gem install neovim
- sudo pacman -S the_silver_searcher
- trizen -S fzf

#### Coc extensions
`CocInstall coc-tsserver coc-yaml coc-html coc-css coc-python coc-highlight coc-json`

