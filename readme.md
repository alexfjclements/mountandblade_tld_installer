This file contains a bash script which automates the commands found on https://steamcommunity.com/workshop/filedetails/discussion/299974223/361787186436486677/

The script is run by navigating to the folder in which it is saved in terminal, and entering
```
bash mountandblade_TLD_installer.sh
```

The script will ask you to confirm that you want to install The Last Days mod from https://tldmod.github.io/. Once this is confirmed it will run through the process shown in the above steam community link. While it is implementing the fixes for the audio bugs, the script will ask you to confirm the overwriting of native files. There are quite a lot of these so it is easiest to enter ``` A ``` in the terminal to accept all.

Once the script has been run, opening Mount and Blade Warband from Steam as usual in the configure format will allow TLD to be selected, and the mod should play as usual.

Nb. I've found it necessary to disable HDR in the game options. Not doing so produces some weird campaign map effects.

If you want to play native M&B or other mods, it is necessary to revert the game to its original form. This is done by finding the game in the Steam library, right clicking and choosing properties, navigating to the 'local files' tab and clicking on check integrity of game files. To play TLD again after doing this the installer script will need to be re-run.
