// swift-tools-version: 5.6

import PackageDescription

// MARK: - Package Configuration
let package = Package(
    name: "tonkui-ios",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "TonkUI",
            targets: ["TonkUI"]),
    ],
	dependencies: .tonkui,
    targets: [
        .target(
            name: "TonkUI",
            dependencies: .tonkui,
            path: "Sources"
        ),
    ]
)

// MARK: -- Package Dependencies
extension [Package.Dependency] {
	static var tonkui: [Package.Dependency] {
		[
			.package(url: "git@github.com:ivalx1s/tonkui-materials-ios.git", from: "0.1.0"),
			.package(url: "git@github.com:ivalx1s/tonkui-fonts-ios.git", from: "0.1.2"),
			.package(url: "git@github.com:ivalx1s/swiftui-pageview.git", from: "0.4.2"),
			.package(url: "git@github.com:ivalx1s/swiftui-plus.git", from: "0.2.0"),
		]
	}
}

// MARK: -- TonkUI Target Dependencies
extension [Target.Dependency] {
	static var tonkui: [Target.Dependency] {
		[
			.product(name: "TonkUIMaterials", package: "tonkui-materials-ios"),
			.product(name: "TonkUIFonts", package: "tonkui-fonts-ios"),
			.product(name: "suipageview", package: "swiftui-pageview"),
			.product(name: "SwiftUIPlus", package: "swiftui-plus"),
		]
	}
}


