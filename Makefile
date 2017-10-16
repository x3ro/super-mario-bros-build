BUILDDIR = build
ORIGFILE = orig/SuperMarioBros.nes
BINFILES = $(BUILDDIR)/header.bin $(BUILDDIR)/prg-rom.bin $(BUILDDIR)/chr-rom.bin
SOURCE = SMBDIS.ASM

assemble: $(BINFILES)
	cat $(BINFILES) > $(BUILDDIR)/game.nes

$(BUILDDIR)/prg-rom.bin: $(BUILDDIR) $(SOURCE)
	cp $(SOURCE) $(BUILDDIR)/prg-rom.asm && ./badassm.py $(BUILDDIR)/prg-rom.asm

$(BUILDDIR)/chr-rom.bin: $(BUILDDIR)
	tail -c 8192 $(ORIGFILE) > $(BUILDDIR)/chr-rom.bin

$(BUILDDIR)/header.bin: $(BUILDDIR)
	head -c 16 $(ORIGFILE) > $(BUILDDIR)/header.bin

$(BUILDDIR):
	mkdir -p $(BUILDDIR)


.PHONY: clean

clean:
	rm -rf $(BUILDDIR)
