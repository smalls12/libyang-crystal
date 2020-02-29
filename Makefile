all:
	# build libyang
	git clone --depth=1 https://github.com/CESNET/libyang.git
	mkdir -p libyang/build; \
	cd libyang/build; \
	cmake ..; \
	make; \
	sudo make install
	