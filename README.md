#Install

```bash
cd ~
git clone git@github.com:ndufreche/vim-profile.git .vim
ln -s .vim/vimrc .vimrc

cd .vim
git submodule update --init

cd autoload
ln -s ../pathogen/autoload/pathogen.vim .
 ```
