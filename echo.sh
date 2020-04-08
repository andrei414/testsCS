git fetch --quiet
git diff master origin/master >| output.txt
if output.txt | grep 'diff' ; then
	echo "changes"
else
	echo " no changes"
fi