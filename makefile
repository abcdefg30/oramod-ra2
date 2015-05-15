all: clean
	@cp -r ra2 openra/mods/ra2

clean:
	@rm -rf openra/mods/ra2

run:
	@cd openra && make && mono --debug openra.game.exe Game.Mod=ra2 && cd ..
