if [ "$#" -ne 2 ]; then
    echo "Usage is bump [name].rb [version], for example: bump general.rb 0.2"
fi

PROJ=$1
VERSION=$2

SHA256=$(shasum --algorithm 256 $(brew --cache --build-from-source $PROJ) | awk '{print $1}')
sed -E -i '' 's/^    sha256 ".+"/    sha256 "'$SHA256\"/ $PROJ
sed -E -i '' 's/^    version ".+"/    version "'$VERSION\"/ $PROJ
sed -E -i '' 's/^    url ".+"/    url "https:\/\/github.com\/rosberry\/general\/archive\/'$VERSION'.tar.gz'\"/ $PROJ