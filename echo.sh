if git diff-index --quiet HEAD --; then
	echo "no changes"
else
	echo "changes"
fi