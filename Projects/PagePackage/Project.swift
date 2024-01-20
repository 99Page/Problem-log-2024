//
//  PagePackage.swift
//  PL-2024Manifests
//
//  Created by 노우영 on 1/20/24.
//

import ProjectDescription

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let target = Target(
    name: "PagePackage",
    platform: .iOS,
    product: .framework,
    bundleId: "com.page.package",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .package(product: "Kingfisher"),
    ]
)

let project = Project(name: "PagePackage",
                      organizationName: "page",
                      packages: [
                        .remote(url: "https://github.com/Alamofire/Alamofire.git",
                                requirement: .upToNextMajor(from: "5.7.0")),
                        .remote(url: "https://github.com/onevcat/Kingfisher.git",
                                requirement: .upToNextMajor(from: "7.10.2"))
                      ],
                      settings: nil,
                      targets: [target]
)

