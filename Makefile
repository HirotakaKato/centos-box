.PHONY: all clean

TARGET = centos.box

all: $(TARGET)

clean:
	rm -rf output-virtualbox-iso
	rm -f $(TARGET)

%.box: %.json %.cfg
	packer build $<
