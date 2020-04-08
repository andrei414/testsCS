git fetch --quiet
git diff master origin/master >| output.txt
if cat output.txt | grep "diff" --quiet ; then
	echo "changes"
else
	echo " no changes"
fi