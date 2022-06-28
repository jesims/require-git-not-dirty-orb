if ! git diff --quiet --exit-code "${PARAM_PATH}"; then
	echo 'ERROR: Uncommitted changes'
	git status --porcelain
	echo '--------------------'
	git diff
	exit 1
fi
