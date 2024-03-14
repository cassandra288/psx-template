all:
	$(MAKE) -C src
	./thirdparty/mkpsxiso.exe -y meta/mkpsxiso.xml

run:
	cd pcsx-redux && ./pcsx-redux.exe -run -stdout -fastboot -iso ../out/main.bin

clean:
	$(MAKE) -C src clean

# declare phony rules
.PHONY: run clean all
