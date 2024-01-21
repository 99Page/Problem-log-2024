//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 노우영 on 1/21/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let target = Target(
    name: "MultiAlert",
    platform: .iOS,
    product: .app,
    bundleId: "page.problem.log.2024.multi.alert",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .project(target: "PagePackage", path: "../PagePackage")
    ]
)

let project = Project(name: "MultiAlert",
                      organizationName: "page",
                      settings: nil,
                      targets: [target]
)


