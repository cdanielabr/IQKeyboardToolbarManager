// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQKeyboardToolbarManager",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "IQKeyboardToolbarManager",
            targets: ["IQKeyboardToolbarManager"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/cdanielabr/IQKeyboardToolbar.git", branch: "main"),
        .package(url: "https://github.com/cdanielabr/IQTextInputViewNotification", branch: "main"),
    ],
    targets: [
        .target(name: "IQKeyboardToolbarManager",
            dependencies: [
                "IQKeyboardToolbar",
                "IQTextInputViewNotification"
            ],
            path: "IQKeyboardToolbarManager",
            resources: [
                .copy("Assets/PrivacyInfo.xcprivacy")
            ],
            linkerSettings: [
                .linkedFramework("Combine"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
