if [ "$#" -ne 2 ]; then
    echo "Usage is bump [name] [version], for example: bump general 0.2"
fi

PROJ=$1
VERSION=$2
FORMULA=$PROJ'.rb'

SHA256=$(shasum --algorithm 256 $(brew --cache --build-from-source $FORMULA) | awk '{print $1}')

sed -E -i '' 's/^    sha256 ".+"/    sha256 "'$SHA256\"/ $FORMULA
sed -E -i '' 's/^    version ".+"/    version "'$VERSION\"/ $FORMULA
sed -E -i '' 's/^    url ".+"/    url "https:\/\/github.com\/rosberry\/${PROJ}\/archive\/'$VERSION'.tar.gz'\"/ $FORMULA
