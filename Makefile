
include make.inc

#EXTERNAL_LIB_DIRECTORY = /usr/local/lib
EXTERNAL_LIB_DIRECTORY = /usr/local/lib64

BIN_DIRECTORY = /usr/local/bin

install:
	cp ./lib/libspherepack.a $(EXTERNAL_LIB_DIRECTORY)
	cp -r ../spherepack3.2 $(BIN_DIRECTORY)

all: libspherepack testspherepack

libspherepack:
	mkdir -p ./lib
	mkdir -p ./objs
	( cd ./src; $(MAKE) clean; $(MAKE) )

testspherepack:
	( cd ./test; $(MAKE) clean; $(MAKE) )

clean:
	( cd ./src; $(MAKE) clean; cd ../test; $(MAKE) clean )
