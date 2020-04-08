if git diff master origin/master --quiet| grep -q "diff"; then
	echo "changes"
else
	echo " no changes"
fi