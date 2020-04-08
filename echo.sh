if git fetch origin | grep -q "Unpacking objects"; then
	echo "changes"
else
	echo " no changes"
fi