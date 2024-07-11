import ProjectDescription

let script: String = """
export PATH="$PATH:/opt/homebrew/bin"
if which swiftlint > /dev/null; then
swiftlint --fix
else
echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
exit 1
fi
"""

let project = Project(
	name: "MdEditor",
	organizationName: "MyOrg",
	targets: [
		Target(
			name: "MdEditor",
			destinations: .iOS,
			product: .app,
			bundleId: "ru.tatyadubovatuist.MdEditor",
			infoPlist: .file(path: "Info.plist"),
			sources: ["MdEditor/Sources/**"],
			scripts: [.pre(script: script, name: "SwiftLint", basedOnDependencyAnalysis: false)]
		)
	]
)
