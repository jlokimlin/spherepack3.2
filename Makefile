
include make.inc

all: libspherepack testspherepack

libspherepack:
	mkdir -p ./lib
	mkdir -p ./objs
	( cd ./src; $(MAKE) clean; $(MAKE) )

testspherepack:
	( cd ./test; $(MAKE) clean; $(MAKE) )

install:
	cp ./lib/libspherepack.a $(EXTERNAL_LIB_DIRECTORY)
	cp -r ../spherepack3.2 $(BIN_DIRECTORY)

clean:
	( cd ./src; $(MAKE) clean; cd ../test; $(MAKE) clean )
