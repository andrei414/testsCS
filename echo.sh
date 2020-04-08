if git status | grep -q "Your branch is up to date with 'origin/master'"; then
	echo "no changes"
else
	echo "changes"
fi