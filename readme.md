![soviet-screenshot](http://i.imgur.com/o7DDO6V.png)

##Roadmap:

1) Stay true to vanilla RA2 (for now)

2) Implement factions in order

3) Implement actor types in order for each faction

Factions:
* America
* Korea
* France
* Germany
* Great Britain
* Libya
* Cuba
* Iraq
* Russia

Actors:
* Structures (power plant → tech center)
* Support structures (walls, defenses, etc)
* Vehicles
* Infantry
* Aircraft
* Naval
* Special Units (including infiltration unlocks)

For example:
All American structures should be done first.
Many of these are generic Allied structures which is fine.
By `done` I mean proper art (offsets and frames) and complete rules (as much as the engine allows).

After all actors are in the game we can focus on support powers / superweapons.

Reference links:
* [Allied units](http://cnc.wikia.com/wiki/Allied_Units_and_Structures_Summary#Great_World_War_III_.28Red_Alert_2.29)
* [Soviet units](http://cnc.wikia.com/wiki/Soviet_Units_and_Structures_Summary#Great_World_War_III_.28Red_Alert_2.29)
* [Icons](http://xhp.xwis.net/ra2_icons/)

##OpenRA stuff to watch/review:
* [Unit audio](https://github.com/OpenRA/OpenRA/pull/7573)
* [ts-snow](https://github.com/pchote/openra/tree/ts-snow) (WIP branch by @pchote)

##Development Notes:
* `mk` anims are in isotemp.mix (or isosno.. etc)
* `gg`/`ng` anims are in generic.mix
* `icon`s are in cameo.mix

Tile indices:
*  0 = Clear
* 12 = Transition
* 13 = Slopes or Slopes/Pavement
