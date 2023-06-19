#My aliases
alias po="apt-cache policy"
alias sho="apt-cache show"
alias aps="apt-cache search"
alias clean="sudo apt autoclean"
alias arm="sudo apt autoremove"
alias ilist="apt list --installed | grep"
alias lg="ll | grep"
alias upe="sudo apt update && sudo apt upgrade && flatpak upgrade"
alias upa="sudo apt update"
alias mem="free -mh"
alias bp="bpytop"
alias s="tuxi"
alias sd="tuxi define"
alias ru="ps aux | peco"
alias kl="fkill"
alias tb="nc termbin.com 9999"
alias t="exa -T"
alias tl="exa --sort=size --long --all --header"
alias ds="du -sh"
alias pp='mpv $(xclip -o) & exit'
alias lsdd='lsd -dltr */'
alias lsr="ls -altr"
alias cl="clear"
alias cht="cht.sh"
alias sob="source ~/.bashrc"
alias openb="vim ~/.bashrc"
alias vimrc="svim /etc/vim/vimrc"
alias upg="apt list --upgradable"
alias rmf="sudo rm -f"
alias rmrf="sudo rm -rf"
alias svim="sudo vim"
alias nv="nvim"
alias pre="cd -"
alias pr="cd .."
alias cll="clear && ll"
alias fan="watch -n 1 sensors"
alias md="mkdir"
alias mf="touch"
alias code="flatpak run com.visualstudio.code"
alias i='vifm .'
# Makes qr code out of copied text/data so it can be scanned and opened in phone by scanning the qr code -
alias r='qrencode -t PNG -s 8 -o /tmp/qr.png "$(xclip -o -selection clipboard)" && qimgv /tmp/qr.png && rm /tmp/qr.png'
alias f="showinfilemanager "
alias wo='shuf -n 10 /usr/share/dict/american-english'
alias ope="broot"
alias of="exit"
alias pid="ps axww -o pid,user,%cpu,%mem,start,time,command | fzf | sed 's/^ *//' | cut -f1 -d' '"
alias j.='for f in $(find . -maxdepth 1 -type d | fzf); do cd "$f"; done'
alias f.='find . -maxdepth 1 -type f | fzf | xargs -I{} xdg-open "{}"'
alias fa="fzf --preview 'xdg-open {}' --bind 'enter:execute(xdg-open {})+abort' --preview-window=right:3:hidden && exit"
# alias ja='for f in $(find / -type d -readable 2>/dev/null | fzf); do cd $f; done' -- same as below 'ja' but without preview window
alias ja='cd "$(find / -type d -print 2>/dev/null | fzf --preview '\''ls {}'\'')"'
# alias ja='cd "$(find / -type d -print 2>/dev/null | fzf --preview '\''ls -la --time-style=long-iso {}'\'' 2> /dev/null)"'
alias no="fzf --preview 'nvim -c \"set previewheight=2 | set syntax=on\" {}' --bind 'enter:execute(nvim {})+abort' --preview-window=right:3:hidden"
# fzf --preview 'nvim -c "set previewheight=2 | set syntax=on" {}' --bind 'enter:execute(nvim {})+abort' -- this is similar to 'on' alias but with a preview window of the contents
alias gmail="google-chrome https://mail.google.com/; exit"
# alias gn="function _hn(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://news.ycombinator.com/'; };_hn"
alias gn="function _hr(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://news.ycombinator.com/'; exit; };_hr"
alias gr="function _hn(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://www.reddit.com/?q='; exit; };_hn"
alias ga="function _hr(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://news.ycombinator.com+OR+site:https://www.reddit.com/'; exit; };_hr"
alias gf="function _hr(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://www.freecodecamp.org/+OR+site:https://dev.to/+OR+site:https://medium.com/'; exit; };_hr"
alias gof="function _hr(){ search_term=\$(echo \$@ | tr ' ' '+'); brave-browser 'https://www.google.com/search?q='\$search_term'+site:https://www.freecodecamp.org/'; exit; };_hr"
alias ms='cd /home/archit/Pictures/Screenshots/
latest_file=$(ls -t | head -n1)
timestamp=$(date -r "$latest_file" +"%Y-%m-%d_%H-%M-%S")
extension="${latest_file##*.}"
filename="${latest_file%.*}"
echo "Latest screenshot: $latest_file ($timestamp)"
read -p "Enter new filename: " new_filename
mv "$latest_file" "${new_filename}.${extension}"'
alias createjsx='touch One.jsx Two.jsx Three.jsx Four.jsx Five.jsx Six.jsx Seven.jsx Eight.jsx Nine.jsx Ten.jsx Eleven.jsx Twelve.jsx Thirteen.jsx Fourteen.jsx Fifteen.jsx'
alias rea='npm create vite@latest vite-project && cd vite-project && rm -rf public/ && npm i && cd src && rm -rf assets/ && echo "" > App.jsx && echo "const App = () => {" >> App.jsx && echo " return (" >> App.jsx && echo " <div>App</div>" >> App.jsx && echo " )" >> App.jsx && echo "}" >> App.jsx && echo "" >> App.jsx && echo "export default App" >> App.jsx && echo "" > index.css && echo "" > App.css && nvim App.jsx'
alias live='npm run dev'
alias rgo='read -p "Enter search term: " SEARCH_TERM && rg --files-with-matches "$SEARCH_TERM" 2>/dev/null | fzf --preview "nvim +/{q} {}" --preview-window=:wrap --bind "enter:execute(nvim +/{q} {}),ctrl-g:abort"'
alias rgimp='rg --files-with-matches "123imp" 2>/dev/null | fzf --preview "nvim +/{q} {}" --preview-window=:wrap --bind "enter:execute(nvim +/{q} {}),ctrl-g:abort"'
alias bimages='~/bimages.sh'
alias foob='~/bima.sh'

alias wtr="curl wttr.in"
# alias ob='selected_url=$(cat foo.md | fzf --preview "echo {} | xargs -I % sh -c \"echo % | xargs -I _ basename _ | cut -c 1-40\""); if [[ -n "$selected_url" ]]; then xdg-open "$selected_url"; fi'
alias ali="vim ~/.bash_aliases"
alias sali="sudo vim ~/.bash_aliases"
alias d="cd /home/archit/Downloads/"
# Created alias 'op' for opening pdf's in the fuzzy search mode - 
function op() {
     xdg-open "$(locate -ir .pdf$ | fzf)" 
 }
# Created alias 'vimf' for opening selected file in vim in fuzzy search mode - 
 function vimf() {
     FILE=$(fzf) && vim "$FILE"
 }
# Created alias 'open' for opening any selected file in fuzzy mode in its default application - 
function open() {
xdg-open "$(locate "*" | fzf -e)" ;
}
# git aliases - 
alias g="git"
alias gks="git status"
alias gd="git add ."
alias gp="git push origin"
alias ghh="gh --help | less"
alias ghp="gh pr --help | less"
alias rep="cd /home/archit/repos/"
alias a="cd /home/archit/repos/architrohal-site/"
alias gdif="git diff origin/main..HEAD" # - to view unpushed git commits by showing diff b/w local and remote repo
alias gb="git branch"
alias gc="git checkout"
alias gv="gh repo view"
alias gbd="git branch --delete"
alias gupdate="sudo rsync -r --info=progress2 ~/obsidian-vault/ ~/Downloads/git-obsidian-vault/ && cd ~/Downloads/git-obsidian-vault && git add . && git commit -m 'docs: update' && git push origin"
# alias dupdate='sudo rsync -avz /root/.vimrc ~/repos/dotfiles/.vimrc_rootdir && sudo rsync -avz  /etc/vim/vimrc ~/repos/dotfiles/vimrc_etc_vim_ && sudo rsync -avz ~/.vimrc ~/.bash_aliases ~/.bashrc ~/repos/dotfiles/ && cd ~/repos/dotfiles && git add . && git commit -m "docs: update" && git push origin'
alias dupdate='sudo rsync -avz  /etc/vim/vimrc ~/repos/dotfiles/vimrc_etc_vim_ && 
    sudo rsync -avz ~/.vimrc ~/.bash_aliases ~/.bashrc ~/repos/dotfiles/ && 
    sudo rsync -avr ~/.config/mpv/ ~/repos/dotfiles/dot_config_mpv/ && 
    sudo rsync -avr /etc/mpv/ ~/repos/dotfiles/etc_mpv/ && 
    sudo rsync -avr ~/.config/vifm/vifmrc ~/repos/dotfiles/ && 
    cd ~/repos/dotfiles && git add . && 
    git commit -m "docs: update" && 
    git push -u origin'

alias vh="vim index.html"
alias vc="vim styles.css"
alias sr="~/shell_scripts/safely_remove.sh"
alias qi="qimgv"
alias k="node"

# nif() {
# local file
# file=$(fzf --preview 'bat --style=numbers --color=always {}' --preview-window=right:70%:wrap --no-sort --reverse) && nvim "$file"
# }

# nif() {
# local file
# file=$(fzf --preview 'less {}' --preview-window=right:70%:wrap --no-sort --reverse) && nvim "$file"
# }

# without preview window and not reverse(to add reverse just type '--reverse' after '--no-sort' inside the brackets) - 
nif() {
    local file
    file=$(fzf --no-sort) && nvim "$file"
}
# alias mpv='mpv --no-border'
alias c='~/bluetooth_script.sh; exit'
alias dfh='df -H'
alias cat='lolcat'
