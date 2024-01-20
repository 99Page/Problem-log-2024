//
//  Project.swift
//  PL-2024Manifests
//
//  Created by 노우영 on 1/20/24.
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
    name: "ListStudy",
    platform: .iOS,
    product: .app,
    bundleId: "page.problem.log.2024.list.study",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .project(target: "PagePackage", path: "../PagePackage")
    ]
)

let project = Project(name: "ListStudy",
                      organizationName: "page",
                      settings: nil,
                      targets: [target]
)


