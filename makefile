
cflags=$(shell pkg-config --cflags --libs glib-2.0 gtk+-3.0)
cdefs=-DGIT_REVISION=\"$(shell git describe --tags --always)\"

always:
	valac ftx.vala --pkg gtk+-3.0 --pkg global_defs -C --vapidir=.
	gcc $(cdefs) ftx.c -o ftx $(cflags)

