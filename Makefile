OS := $(shell uname)

all: clean dependencies install finish

dependencies:
ifeq ($(OS),Linux)
	@sudo apt-get -y install openssl zip unzip
endif

install: simple-encryptor
	@sudo cp simple-encryptor /usr/local/bin/

finish:
	@echo 'Installed correctly!'

clean:
	@if test -e /usr/local/bin/simple-encryptor; then sudo rm -f /usr/local/bin/simple-encryptor; fi
