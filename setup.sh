VERSION=`cat version`

echo "Installing flacup $VERSION"
sudo apt-get install python3 python3-setuptools metaflac mktorrent git flac
sudo pip3 install -r requirements.txt
echo "Open and modify the username and path variables at the top of flacup.sh"
echo "Set passwords in autotunes24 and autotunes16 by searching for REPLACEME string"
