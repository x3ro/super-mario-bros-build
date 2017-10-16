# Building Super Mario Bros

This repository contains (almost) all of the necessary parts to build Super Mario Bros. from the [disassembly by 1wErt3r](https://gist.github.com/1wErt3r/4048722).

## Instructions

1. Install `python3` and `make`
2. Download a Super Mario Bros. ROM and place it under `orig/SuperMarioBros.nes` in this repository
	* Disclaimer: this may be illegal where you live, especially if you do not own the original game
	* Some ROMs I've tried do not seem to work properly and I don't know why. Try running this command against your ROM, if the output matches it'll probably work:

			$ head -c 16 orig/SuperMarioBros.nes | hexdump
			0000000 4e 45 53 1a 02 01 01 00 00 00 00 00 00 00 00 00
			0000010

3. Download [the disassembly](https://gist.github.com/1wErt3r/4048722) and place it under `SMBDIS.ASM` in this repository.
4. Run `make`
5. The game was assembled at `build/game.nes`


## Thanks

* To [1wErt3r](github.com/1wErt3r) for the disassembly
* To [pellsson](https://github.com/pellsson/badassm) for writing a hacky but working assembler