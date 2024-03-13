all:
	$(MAKE) -C src
	./thirdparty/mkpsxiso.exe -y mkpsxiso.xml

run:
	cd pcsx-redux && ./pcsx-redux.exe -run -stdout -fastboot -iso ../out/example.bin

clean:
	$(MAKE) -C src clean

# declare phony rules
.PHONY: run clean all
