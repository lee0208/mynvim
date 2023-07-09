# myvimrc
My vim configuration file.

## other things

### linux something set up

#### DWM

The window manager is a very useful thing, and there is an i3. dwm is more lightweight, use this if you have insufficient memory
```shell
# update system
sudo pacman -Syu # reboot it.
# downloads base package
sudo pacman -S vim git base-devel
# download dwm
git clone https://git.suckless.org/dwm
# download st, terminal emulator, dwm default
git clone https://git.suckless.org/st
# install dmenu
sudo pacman -S dmenu
# install dwm
cd dwm && sudo make clean install
# install st
cd st && sudo make clean install
# set dwm desktop, select the login desktop after booting
cd /usr/share/xsessions
# create dwm.desktop
sudo vim dwm.desktop
# file...
####
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic Window Manager
Exec=/usr/local/bin/dwm
Icon=
Type=Application
####
# reboot, and choose dwm
# It's ok. just set it.
# front is too small. set to 18.
# every change it, need make install again.

# change the wallpaper, so what... 
```

#### Vim

Write a vim configuration file.
I wanted to record keystrokes. But I need to let my fingers remember him, so you know.... google it when I use it. It is only related to the vim design concept.
three modes：**insert mode**、**normal mode**、**visual mode**

```shell
operation + motion
For example: y is copy, l is right, so the three characters to the right of the copy cursor are y3l.

configuration file:
cd && mkdir .vim
vim vimrc

plug-in:github seach 'vim-plug'

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
Plugin recommendation:
airline、vim-snazzy、nerdtree(ff)、coc.nvim、cppSyntaxCheck&syntastic、goyo、undotree

output html：%TOhtml
Insufficient authority：r ! tee %

```





#### Ranger

Terminal file management, looks good.

```shell
sudo pacman -S ranger xsel

```

Just this now....
