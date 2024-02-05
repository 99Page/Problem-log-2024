//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by wooyoung on 2/5/24.
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
    name: "VerifyBindingBehavior",
    platform: .iOS,
    product: .app,
    bundleId: "page.problem.log.2024.verify.binding.behavior",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .project(target: "PagePackage", path: "../PagePackage")
    ]
)

let project = Project(name: "VerifyBindingBehavior",
                      organizationName: "page",
                      settings: nil,
                      targets: [target]
)

