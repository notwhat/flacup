#!/bin/bash
#notwhat dev dec 18 2016
#Finds directories with flac and attempt to split 16bit and 24bit based on filesize of directory
#Root directory of your music library without trailing slash
BASEDIR=/mnt/music/24flac
#Gazelle site username
USER=satisflaction
find $BASEDIR -maxdepth 2 -type f -name '*.flac*' -printf '%h\0' | sort -zu | sed -z 's/$/\n/' > flacout.tmp
ALBUM_DIRS="$line"

#grabs system info
while IFS='' read -r line || [[ -n "$line" ]]; do

#get space
du -sh "$line"


getbitrate()
{
#gets the directory base folder name to look for 24bit strings
baseline=`basename "$line"`

flacfile=`find "$line" -name "*.flac" | head -n 1`
BITRATE=`metaflac --show-bps "$flacfile"`

#if [[ $baseline == *"24"* ]]
#then
#NEWBITRATE="24bit"
#echo "Setting bitrate to 24bit/96khz";
#BITRATE=$NEWBITRATE
#If we cannot determine ask the user
#else
#echo "borked"
#askbitrate
#fi


}

askbitrate(){
echo "Is this release 24bit? y/n:"
read BITRATE </dev/tty
if [ $BITRATE = "y" ];
then
NEWBITRATE="24bit"
echo "Setting bitrate to 24bit/96khz"
BITRATE=$NEWBITRATE
else
NEWBITRATE="16bit"
echo "Setting bitrate to 16bit/44khz"
BITRATE=$NEWBITRATE
fi
}

getbitrate

echo "Reported as $BITRATE bit - Operation #flacup"
python3 ./autotunes$BITRATE -o . $USER "$line" </dev/tty


done < flacout.tmp
