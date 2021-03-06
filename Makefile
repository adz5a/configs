SESSION=dotfiles

all:
	git submodule update --init

# need to manually add the bashrc in this
# repo to the user's bashrc
install:
	./install.sh install

uninstall:
	./install.sh uninstall

upgrade:
	./install.sh upgrade

workspace:
	tmux new-session -s $(SESSION) -n main

install-ctags-lib:
	apt install lcov binutils-mingw-w64-i686 gcc-mingw-w64-i686 libjansson-dev libyaml-dev - libseccomp-dev
