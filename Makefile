.ONESHELL:

CWD := $(shell pwd)

all:
	cd ${CWD}/build; \
	make -j

debug:
	cd ${CWD}/build; \
	make -j

clean:
	cd ${CWD}/build; \
	make clean

upload:
	picotool load --force --update --verify --execute ${CWD}/build/picoprobe.uf2

