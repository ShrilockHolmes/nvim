export PATH=$PATH:"$HOME/.local/bin:$HOME/.cargo/bin"
# User configuration
#alias vim='NVIM_APPNAME="vim" nvim'
alias vi='nvim'
alias ldir="ls -l | egrep '^d'" # directories only
alias cp='cp -i'
alias mv='mv -i'
alias cls='clear'
alias mkdir='mkdir -p'
alias root='cd /'
alias home='cd ~'
alias ls='ls -aFh --color=always'
alias ll='ls -lh -a'
alias mx='chmod a+x'
alias ../='cd ../'
export EDITOR=nvim
setopt correct_all
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
pacman-mirrors ()
{
  if ls -a /etc/pacman.d/ | grep mirrorlist.bak;then
    sudo rm /etc/pacman.d/mirrorlist.bak
  fi
  if ls -a /etc/pacman.d/ | grep mirrorlist;then
   sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
  fi
 sudo reflector --verbose --latest 30 --protocol https --sort rate --save /etc/pacman.d/mirrorlist 
}
extract () {
    for archive in "$@"; do
        if [ -f "$archive" ] ; then
            case $archive in
                *.tar.bz2)   tar xvjf $archive    ;;
                *.tar.gz)    tar xvzf $archive    ;;
                *.bz2)       bunzip2 $archive     ;;
                *.rar)       rar x $archive       ;;
                *.gz)        gunzip $archive      ;;
                *.tar)       tar xvf $archive     ;;
                *.tbz2)      tar xvjf $archive    ;;
                *.tgz)       tar xvzf $archive    ;;
                *.zip)       unzip $archive       ;;
                *.Z)         uncompress $archive  ;;
                *.7z)        7z x $archive        ;;
                *)           echo "don't know how to extract '$archive'..." ;;
            esac
        else
            echo "'$archive' is not a valid file!"
        fi
    done
}
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
source ~/antigen.zsh
antigen theme romkatv/powerlevel10k
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen apply
