# vim_config
我的VIM编辑器的一些配置
移植vim

git clone https://github.com/ArmstrongWall/vim_config.git
&& cp  vim_config/.vim* ~/
&& sudo apt-get install ctags 
&& git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

3， 安装ctags，sudo apt-get install ctags
4，打开vim，执行
:PluginInstall

遇到 这个问题  Not an editor command: Bundle '**/*.vim'
是因为没有将
scp -r  wzq@192.168.1.147:/home/wzq/.vim/bundle/Vundle.vim  ./
过来
或者 $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

#YouCompleteMe
#YouCompleteMe下载后，因为要进行编译后才能使用，本人在趟过大量的坑后，终于搞懂是什么情况，通宵两个晚上，血泪史呀！英语薄弱真的很致命。
 
#进入YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
 
#执行编译命令
./install.sh

#如果无法编译，安装相关支持
sudo apt-get install cmake
sudo apt-get install python-dev
 
#将编译后的文件，把其中的.ycm_extra_conf.py复制到用户目录下，就可以使用了
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/




#Tmux
source 文件  tmux source-file ~/.tmux.conf

关闭一个面板

主键+x

1，参考https://stackoverflow.com/questions/25940944/ugrade-tmux-from-1-8-to-1-9-on-ubuntu-14-04
安装tmux最新版
先安装依赖项
apt-get install automake exuberant-ctags cmake libevent-dev libncurses5-dev
 $ git clone https://github.com/tmux/tmux.git
 $ cd tmux
 $ sh autogen.sh
 $ ./configure && make 
$ sudo make install

2.配置TMUX tpm (Tmux Plugin Manager)做tmux插件管理并且加上自动保存界面功能

首先安装 git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
再
 $ git clone https://github.com/ArmstrongWall/vim_config.git  
 $ cp -r .tmux/ ~/
 $ cp  .tmux.conf ~/
 
          
在终端下执行以下命令更新tmux配置，运行tpm：

tmux source ~/.tmux.conf

执行 使用tpm安装这些插件， 在tmux下运行prefix + I（如果你没改键绑定的话就是<Ctrl>-b + <Shift>-i）安装插件。你还可以通过prefix + U（<Ctrl>-b + <Shift>-u）更新插件，用prefix + <Alt> + u删除插件。
ALL Tmux Plugin in  https://github.com/tmux-plugins/
如果安装正确，continuum插件会每隔15分钟产生一份备胎，我们也可以用prefix + <Ctrl>-s手动备份，用prefix + <Ctrl>-r手动恢复.
source bash环境 在.tmux.conf添加 run-shell -b 'source rosbuild_ws/setup.bash'
常用指令

