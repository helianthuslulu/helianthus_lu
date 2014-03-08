MODULE_NAME :=kernel_server
obj-m   :=$(MODULE_NAME).o
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD       := $(shell pwd)
all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)
	gcc -o user_client user_client.c
clean:
	rm -fr *.ko *.o *.cmd user_client

