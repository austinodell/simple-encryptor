OS := $(shell uname)

all: clean dependencies install finish

dependencies:
ifeq ($(OS),Linux)
	@sudo apt-get -y install openssl zip unzip sqlite3
endif

install: simple-encryptor
	@sudo cp simple-encryptor /usr/local/bin/
	@mkdir -p ~/.simple-encryptor
	@sqlite3 ~/.simple-encryptor/files.dat < setup.sql

finish:
	@echo 'Installed correctly!'

clean:
	@if test -e /usr/local/bin/simple-encryptor; then sudo rm -f /usr/local/bin/simple-encryptor; fi

uninstall: clean
	@rm -rf ~/.simple-encryptor

reinstall: uninstall install finish
