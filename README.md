# flacup - autoupload flac to gazelle
##modified by nwcd 12/18/2016
###added functionality to check between 16/24bit
###added functionality to run in batch as a shell script
###changed folder renaming to match nwcd guidelines
###flacup is based on autotunes
flacup WILL rename your folders with the corresponding match, if it doesn't match press B to abort.

#Setup instructions
Install flacup:
#
Install Python 3.
Install Metaflac.
Install mktorrent
Install the latest version of mktorrent from https://github.com/Rudde/mktorrent.
Install the dependencies with sudo pip3 install -r requirements.txt. 
Open and modify the username and path variables in flacup.sh
Set passwords in autotunes24 and autotunes16 by searching for REPLACEME string
#

To Do:
#
    Dupe-checking is not yet implemented.
    Only works with 24bit or 16bit FLAC for now.
    flacup is provided for demonstration purposes only.
#
