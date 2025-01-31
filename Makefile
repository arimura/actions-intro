check:
	@test -n "$(SECRET_HOGE)" || (echo "Error: SECRET_HOGE is not set" && exit 1)
	@test -n "$(GITHUB_TOKEN)" || (echo "Error: default token is not set" && exit 1)
