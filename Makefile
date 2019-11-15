PLATFORM="local"

test:
ifeq "$(PLATFORM)" "gha"
	xcodebuild test -project MySDK/MySDK.xcodeproj -scheme MySDK -destination 'platform=iOS Simulator,OS=13.1,name=iPhone 11'
else
	xcodebuild test -project MySDK/MySDK.xcodeproj -scheme MySDK -destination 'platform=iOS Simulator,OS=12.2,name=iPhone X'
endif

	