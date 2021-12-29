# WeaponBanlist
Customizable weapon banlist for server owners
Only supports primary weapons right now, will add the rest on a later date

# Features
- Restrict the use of some weapons
- Give an specific weapon to the player
- Customize the warning message

# Configuration
In the mod.json there are 4 ConVars, change this values for the configuration of the mod:
  - weaponcheckInterval: How often the game checks the weapon on the players
  - banList: The list of banned weapons, add or remove weapons using the weapon file name, they must be spaced by a , and nothing else, use this list of names for the weapons https://noskill.gitbook.io/titanfall2/documentation/file-location/weapon/weapon-config-file-name) 
  - defaultWeapon: The weapon that will be given to the player if using a banned weapon
  - bannedWeaponWarning: The text that will apear on the screen of the player when using a banned weapon
  - 
