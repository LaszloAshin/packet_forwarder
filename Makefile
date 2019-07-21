.PHONY: all
all: build
	./dockcross-linux-armv6 ninja -Cbuild
	./dockcross-linux-armv6 bash -c 'cd build && ctest -V'

build:
	./dockcross-linux-armv6 cmake -Bbuild -H. -GNinja
