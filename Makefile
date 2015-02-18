spec: libuv
	LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib ~/working/crystal/bin/crystal spec spec/libuv_spec.cr

idle: samples/idle.cr libuv
	LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib ~/working/crystal/bin/crystal samples/idle.cr	

hello: samples/hello.cr libuv
	LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib ~/working/crystal/bin/crystal samples/hello.cr	

libuv: src/libuv.cr
