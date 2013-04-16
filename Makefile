ifeq ($(KERNELRELEASE),)  

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) clean

rebuild:
	make clean
	make all
else  

$(info Building with KERNELRELEASE = ${KERNELRELEASE}) 
obj-m := module.o  

endif
