### linux配置

较为完整的写一遍教程，决定较长一段时间的模式。

#### DWM

窗口管理器，挺好使的玩意，还有个i3。dwm更轻量级，内存不足就用这个吧

```shell
# 更新系统
sudo pacman -Syu # reboot it.
# 基础软件包
sudo pacman -S vim git base-devel
# download dwm
git clone https://git.suckless.org/dwm
# download st, 终端模拟器，dwm默认的
git clone https://git.suckless.org/st
# install dmenu
sudo pacman -S dmenu
# install dwm
cd dwm && sudo make clean install
# install st
cd st && sudo make clean install
# set dwm desktop，开机后选择登录的桌面
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

Write a Vim profile. Record something.

本想记录按键操作，但没用。用的时候google吧。只记录vim设计理念相关。

几种模式：**insert model**、**normal model**、

```shell
operation motion
操作+动作

比如：y复制，所以复制光标右边三个字符是，y3l。l表示右

配置文件
cd && mkdir .vim
vim vimrc

美化：
vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
plug 推荐：
airline、vim-snazzy、nerdtree(ff)、coc.nvim(代码补全)、cppSyntaxCheck&syntastic、goyo、书签、undotree

输出html：%TOhtml
权限不够：r ! tee %

```





#### Ranger

终端文件管理，观感不错。

```shell
sudo pacman -S ranger xsel


```

