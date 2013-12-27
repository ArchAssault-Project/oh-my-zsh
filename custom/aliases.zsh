alias alais='alias'					# fix misspelling of alias
alias arin='whois -h whois.arin.net'			# whois using arin.net
alias today='ls *(m0)'					# list files modified today
alias clip='xclip -i -selection "clipboard"'		# read into X selection (XA_CLIPBOARD)
alias cp='cp -v'					# verbose copy
alias csl='clear'					# fix misspelling of cls
alias da='date "+%A, %B %d, %Y [%T]"'			# long-form date
alias del='rm -v -i'					# verbose delete with confirmation
alias df='df -h'					# report disk space usage in human readable format
alias diff='colordiff'					# use colordiff for diff
alias dirsize='find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn'	# get size of all dirs in current directory
alias downvnc='/usr/bin/vncserver -kill :1'		# shut down vncserver :1 (tcp/5901)
alias servevnc='/usr/bin/vncserver -depth 24 -geometry 1280x1024 :1'	 # start vncserver :1 @ 1280x1024 24bit (tcp/5901)
alias fullvnc='/usr/bin/vncviewer -fullscreen' 				 # vncviewer fullscreen
alias lowvnc='/usr/bin/vncviewer -AutoSelect=0 -CompressLevel 5 -QualityLevel 6 -fullscreen' # vncviewer for low bandwidth
alias du='du -c -h'					# disk usage of current dir + subs, display total + human readable
alias du1='du -ch --max-depth=1'			# disk usage of current dir + 1 subdir, total + human readable
alias dus='du -sckx * | sort -nr' 			# directories sorted by size
alias wordy='wc -w * | sort | tail -n10' 		# sort files in current directory by the number of words they contain
alias getip='curl -s icanhazip.com'			# display public IP
alias myip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"			# display public IP
alias gitc='git clone'					# clone a git repo

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# -------------------------------------------------------------------
# Python virtualenv 
# -------------------------------------------------------------------
alias mkenv='mkvirtualenv'
alias on="workon"
alias off="deactivate"

alias grep='grep --color=auto'				# default grep to use colors if supported
alias lsrax='rax2 -L'					# list rax2 base conversion capabilities
alias maek='make'					# correct mispelling
alias mkdir='mkdir -p -v'				# set to create parent folders + verbose
alias md='mkdir -v -p'					# shorten mkdir to 'md' + set to create parent folders + verbose
alias mess='clear ; tail -f /var/log/everything.log'	# clear screen + tail /var/log/everything.log
alias more='less'					# alias more to less (more functional)
#alias movemouse='xdotool mousemove_relative --sync 0 1' # automate mouse move in Xorg > down 1 pixel
alias msfcd='cd /usr/src/metasploit'			# change to metasploit directory
alias msfup='sudo msfupdate'				# update metasploit
alias msf='sudo msfconsole'				# start metasploit in msfconsole
alias mv='mv -v'					# set mv to be verbose
alias sysc='sudo systemctl'				# control systemd
alias ntpup='sudo ntpdate pool.ntp.org'			# sync clock using ntp via pool.ntp.org to current date/time
alias openports='sudo netstat --all --numeric --programs --inet' # view all open ports
alias ped='pedump'					# analyze win32/win64 bins
alias px='ps -aux | grep -i'				# easily find process info >> 'px firefox'
alias ptree='pstree -a'					# pstree + show command-line args
alias rd='rmdir -v'					# verbose rmdir
alias rdp='rdesktop -z -x l'				# remote desktop + enable compression + RDP5 LAN experience
alias rdpb='rdesktop -z -x b'				# remote desktop + enable compression + RDP5 broadband experience
alias rdpf='rdesktop -z -f'				# remote desktop + enable compression + full-screen
alias rdpm='rdesktop -z -x m'				# remote desktop + enable compression + RDP5 modem@28.8 experience
alias reboot='sudo reboot'				# restart computer
alias rm='rm -f'					# rm + force
alias root='sudo su'					# become superuser/root
alias rpwd='pwgen -scny 8'				# generate 8char passwords with secure + capitals + numerals + symbols
alias rpwd12='pwgen -scny 12'				# generate 12char passwords with secure + capitals + numerals + symbols
alias rpwd8='pwgen -cny 8'				# generate 8char passwords with capitals + numerals + symbols
alias scat='sudo cat'					# run cat as superuser
alias size='ls -alsS'					# list files sorted by size first
alias sl='ls --color'					# list files with color enabled
alias suid='find / -perm -4000'				# find all SUID programs
alias szsh='source ~/.zshrc'				# apply any updates to .zshrc file without relogin
alias sts='ssh level1@io.smashthestack.org -p2224'	# play smashthestack level 1
alias svim='sudo vi'					# run vi as superuser
alias today='date '\''+%d%h%y'\'''			# display today's date >> example output: '26Dec13'
alias testtor='torify wget -qO- https://check.torproject.org/ | grep -i congratulations'	# test tor is working
alias torx='sudo systemctl restart tor'			# restart tor
alias torup='sudo systemctl start tor'			# start tor
alias tordown='sudo systemctl stop tor'			# stop tor
alias torssh='usewithtor ssh'				# run ssh thru tor

# create website backup using wget
#          -np, --no-parent          don't ascend to the parent directory.
#          -c,  --continue           resume getting a partially-downloaded file.
#          -m,  --mirror             shortcut for -N -r -l inf --no-remove-listing.
#          -k,  --convert-links      make links in downloaded HTML or CSS point to local files.
#          -p,  --page-requisites    get all images, etc. needed to display HTML page.
#          -E,  --adjust-extension   save HTML/CSS documents with proper extensions.
#          -U,  --user-agent=AGENT   identify as AGENT instead of Wget/VERSION.
#          --html-extension          As of version 1.12, Wget will also ensure that any downloaded files of type text/css end in the suffix .css, and the option was renamed from --html-extension, to better reflect its new behavior. The old option name is still acceptable, but should now be considered deprecated.
#          --restrict-file-names=OS  restrict chars in file names to ones OS allows.
#          -e,  --execute=COMMAND    execute a `.wgetrc'-style command.
#               robots=off                ignore robots.txt
alias wwwbakup='wget -np -c -m -k -p -E -U "Mozilla/5.0 (compatible; Konqueror/3.2; Linux)" --html-extension --restrict-file-names=windows -e robots=off'

alias vdiff='vimdiff'					# 
alias vimirror='sudo vi /etc/pacman.d/mirrorlist'
alias vizsh='vi ~/.zshrc'
alias vizshalias='vi ~/.oh-my-zsh/custom/aliases.zsh'
alias wiki='/usr/bin/wiki-search'

# Pacman aliases
alias pacupg='sudo pacman -Syu'        # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacget='sudo pacman -S'          # Install specific package(s) from the repositories
alias pacupg='sudo pacman -U'          # Install specific package not from the repositories but from a file 
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacfind='pacman -Ss'             # Search for package(s) in the repositories
alias pacinfo='pacman -Qi'             # Display information about a given package in the local database
alias paclocs='pacman -Qs'             # Search for package(s) in the local database

# Additional pacman alias examples
alias pacupd='sudo pacman -Sy'                 # Update and refresh the local package databases against repositories
alias pacgetdd='sudo pacman -S --asdeps'       # Install given package(s) as dependencies of another package
alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
alias pacc='sudo pacman -Sc'
alias paccc='sudo pacman -Scc'
alias pacfile='pacman -Qo'
alias packgrep='ls /var/log/packages | grep -i'
alias packey='sudo pacman-key --init && sudo pacman --populate archlinux'
alias paclfind='sudo pacman -Qs'
alias paclist='pacman -Ql'
alias paclock='sudo rm -f /var/lib/pacman/db.lck'
alias pacrm='sudo pacman --noconfirm -Rns'
alias pacrmc='sudo pacman --noconfirm -R'
alias pacrmd='sudo pacman --noconfirm -Rd'
alias pacrmdd='sudo pacman --noconfirm -Rdd'
alias pacrs='sudo pacman --noconfirm -Rs'
alias pacup='sudo pacman -Syu'
alias pacupn='sudo pacman -Syu --noconfirm && sudo abs'
alias mirrorup='sudo reflector -l 20 --threads 10 -c "United States" --save /etc/pacman.d/mirrorlist -f 10'


abscc () { cp -R /var/abs/$==*/ ./ }
absfind () { sudo find /var/abs -name "*"$==*"*" }
absg () { grep $==* -R /var/abs/*/*/PKGBUILD }
ffind () { find . -iname '*'$==*'*' }
gdmesg () { dmesg | grep -i $==* }
gmess () { grep -i $==* /var/log/messages }
gpack () { grep -i $==* /var/log/packages/* }
hist () { history | grep $==* }
grepir () { grep -iR $==* }
lpack () { less /var/log/packages/$==* }
lsdd () { ls -al | grep ^d }
pg () { ps -Af | grep $==* }
rascc () { rax2 -c $==* }
rasce () { rax2 -e $==* }
rascfile () { rax2 -S $==* }
rasch () { rax2 -x $==* }
rascx () { rax2 -X $==* }
rfcget () { ncftpget ftp://ftp.isi.edu/in-notes/rfc$==^.txt }
space () { du -k $==* | sort -n }
sspace () { sudo du -k $==* | sort -n }
setupvnc () { mkdir -p ~/.vnc && /usr/bin/vncpasswd ~/.vnc/passwd }
tcpdump () { sudo tcpdump -v -i $==* }
unb2 () { tar jxvf $==* }
untz () { tar vxzf $==* }
uptgz () { sudo upgradepkg --install-new $==* }
