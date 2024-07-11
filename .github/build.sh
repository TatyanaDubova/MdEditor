brew install curl
brew install swiftlint
curl -Ls https: install.tuist.io | bash
tuist install 3.42.2
tuist fetch
tuist generate
xcodebuild clean -quiet
xcodebuild build-for-testing\
    -workspace 'MdEditor.xcworkspace' \
    -scheme 'MdEditor' \
    -destination 'platform=iOS Simulator,name=iPhone 14 Pro'
