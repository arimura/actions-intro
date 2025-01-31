check:
	@test -n "$(SECRET_HOGE)" || (echo "Error: SECRET_HOGE is not set" && exit 1)
	@test -n "$(GITHUB_TOKEN)" || (echo "Error: GITHUB_TOKEN is not set" && exit 1)
