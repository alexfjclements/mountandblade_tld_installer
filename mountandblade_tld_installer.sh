echo Returning the native game to normal following this install
echo requires a further process, linked on the following page:
echo https://steamcommunity.com/workshop/filedetails/discussion/299974223/361787186436486677/
echo Answering n to the following question will abort the installation script.
echo Download game files from the following page:
echo https://tldmod.github.io/
echo "Is this done(y/n)?"
read answer
echo $answer
if [ "$answer" == "y" ]
then
  echo Downloading the unar command-line utility...
  cd /tmp && curl -L 'cdn.theunarchiver.com/downloads/unarMac.zip' -o unar.zip && unzip -o unar.zip

  echo Removing any existing TLD folder...
  cd ~/'Library/Application Support/Steam/steamapps/common/MountBlade Warband/Modules/'
  rm -rf TLD

  echo Extracting TLD and the nightly patch...
  cd ~/Downloads
  /tmp/unar -D -f -o ~/'Library/Application Support/Steam/steamapps/common/MountBlade Warband/Modules' TLD_3.5_wb.7z
  /tmp/unar -D -f -o ~/'Library/Application Support/Steam/steamapps/common/MountBlade Warband/Modules' `find . -name 'TLD_3.5_wb_*' | sort -r -u | head -n 1`

  echo Fixing the font and collision bodies...
  cd ~/'Library/Application Support/Steam/steamapps/common/MountBlade Warband/Modules/TLD/' && cp -f ./Textures/font.dds ../../Textures/
  cp -f ./Data/font_data.xml ../../Data/
  cp -f ./Data/skeleton_bodies.xml ../../Data/
  
  echo Fixing corrupted sound files...
  cd /tmp && curl -L 'github.com/tldmod/tldmod/releases/download/TLD3.3REL/TLD_3.5_Sounds.zip' -o TLD_3.5_Sounds.zip && unzip TLD_3.5_Sounds.zip -d ~/'Library/Application Support/Steam/steamapps/common/MountBlade Warband/Modules/TLD/'
fi
