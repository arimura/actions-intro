PLATFORM="local"

install:
	pod install --project-directory=MySDK

test:
ifeq "$(PLATFORM)" "gha"
	xcodebuild test -workspace MySDK/MySDK.xcworkspace -scheme MySDK -destination 'platform=iOS Simulator,OS=13.1,name=iPhone 11'
else
	xcodebuild test -workspace MySDK/MySDK.xcworkspace -scheme MySDK -destination 'platform=iOS Simulator,OS=12.2,name=iPhone X'
endif
