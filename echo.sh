if git diff origin/master --quiet HEAD --; then
	echo "no changes"
else
	echo "changes"
fi