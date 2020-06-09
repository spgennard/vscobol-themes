# exit on error
set -e
PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
rm -f *.vsix
vsce package
npx ovsx publish cobol*.vsix -p $(cat $HOME/.ovsx.token)
vsce publish

npm-check-updates

#echo "use: ncu -u"
