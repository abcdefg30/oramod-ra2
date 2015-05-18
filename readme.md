![screenshot](http://i.imgur.com/HxQWvXw.png)

Directory tree:

    ra2/    => the RA2 mod files

    openra/ => the OpenRA engine


##Build/Play instructions:

1. `git clone --recursive https://github.com/Phrohdoh/oramod-ra2.git`
2.  Build OpenRA (in the `openra` directory)
3.  Copy the ra2 directory into openra/mods/ (as openra/mods/ra2/)
4.  Copy all required .mix files into your content directory. See [Content installation](https://github.com/Phrohdoh/oramod-ra2/wiki/Content-installation).
5.  Launch OpenRA and select the ra2 mod

Reference links:
* [Allied units](http://cnc.wikia.com/wiki/Allied_Units_and_Structures_Summary#Great_World_War_III_.28Red_Alert_2.29)
* [Soviet units](http://cnc.wikia.com/wiki/Soviet_Units_and_Structures_Summary#Great_World_War_III_.28Red_Alert_2.29)
* [Icons](http://xhp.xwis.net/ra2_icons/)

##Development Notes:
* `mk` anims are in isotemp.mix (or isosno.. etc)
* `gg`/`ng` anims are in generic.mix
* `icon`s are in cameo.mix
* infantry are in conquer.mix

Sequence 'Tick' properties are the number of milliseconds per frame.

Tile type indices:
* 00 = Clear
* 01 = Ice
* 02 = Unknown
* 03 = Unknown
* 04 = Unknown
* 05 = Tunnel
* 06 = Railroad
* 07 = Rock
* 08 = Unknown
* 09 = Water
* 10 = Beach
* 11 = Road
* 12 = Some LAT Transitions
* 13 = Mostly Slopes
* 14 = Rough
* 15 = Cliff

Wall, Tiberium, and Weeds are somewhere in this list,
  even though they are overlays and not tiletypes,
  because they affect actor movement speed.

[Tutorial: Converting Westwood maps (TS/RA2) to OpenRA](https://gist.github.com/Phrohdoh/ab2524fe46b05b029d4b) (outdated).