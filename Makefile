quickstart.wasm: quickstart.c Makefile
	clang -D HPY_ABI_UNIVERSAL --target=wasm32-wasi -I ~/prog/hpy/hpy/devel/include -Wl,--export-all -Wl,--no-entry --no-standard-libraries quickstart.c -E