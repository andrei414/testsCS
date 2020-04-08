if git fetch | grep -q 'Already up to date.'; then
	echo "no changes"
else
	echo "changes"
fi