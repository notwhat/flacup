# flacup - autoupload flac to gazelle
##modified by nwcd 12/19/2016
####flacup is based on autotunes - https://bitbucket.org/whatbetter/autotunes
###Changelog:
#
    added functionality to check between 16/24bit flac
    added functionality to run in batch as a shell script
    changed folder renaming to match nwcd guidelines
#

###FAQ
#
    flacup WILL rename your folders with the corresponding match, if it doesn't match press B to abort.
    flacup crashes sometimes but should continue on - if not rerun and skip the problem folder
    flacup only looks up through musicbrainz - there is a lot missing for vinyl rips
#


###Install flacup:
#
    Dependencies: python3 python3-setuptools mktorrent git flac
    ./setup.sh
    Open and modify the username and path variables at the top of flacup.sh
    Set passwords in autotunes24 and autotunes16 by searching for REPLACEME string
#

###To Do:
#
    Dupe-checking is not yet implemented.
    Only works with 24bit or 16bit FLAC for now.
    flacup is provided for demonstration purposes only.
#
