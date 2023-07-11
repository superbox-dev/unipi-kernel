DTSS = ds2482.dts unipi_id.dts unipi_l203.dts unipi_l303.dts unipi_l403.dts unipi_l503.dts unipi_l513.dts unipi_l523.dts unipi_l533.dts unipi_m103.dts unipi_m203.dts unipi_m303.dts unipi_m403.dts unipi_m503.dts unipi_m523.dts unipi_rtc.dts unipi_s103.dts unipi_s103_e.dts unipi_s103_g.dts unipi_s103_i.dts
DTBS = $(DTSS:.dts=.dtbo)

LINUX_DIR_PATH = /lib/modules/$(shell uname -r)/build
ifdef CCPREFIX
    CCPAR = CROSS_COMPILE=${CCPREFIX}
endif
ifdef ARCH
    CCPAR += ARCH=${ARCH}
endif

PWD := $(shell pwd)

dtbo-y += $(DTBS)

targets += $(dtbo-y)
always  := $(dtbo-y)


all:
	make $(CCPAR) -C $(LINUX_DIR_PATH) M=$(PWD)

clean:
	make $(CCPAR) -C $(LINUX_DIR_PATH) M=$(PWD) clean
