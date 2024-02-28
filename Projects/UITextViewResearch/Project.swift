//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by wooyoung on 2/27/24.
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
    name: "UITextViewResearch",
    platform: .iOS,
    product: .app,
    bundleId: "page.problem.log.2024.uiTextView.research",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .project(target: "PagePackage", path: "../PagePackage")
    ]
)

let project = Project(name: "UITextViewResearch",
                      organizationName: "page",
                      settings: nil,
                      targets: [target]
)

