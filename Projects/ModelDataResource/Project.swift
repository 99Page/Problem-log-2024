//
//  Projec.swift
//  ProjectDescriptionHelpers
//
//  Created by wooyoung on 2/23/24.
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
    name: "ModalDataResource",
    platform: .iOS,
    product: .app,
    bundleId: "page.problem.log.2024.model.data.resource",
    infoPlist: .extendingDefault(with: infoPlist),
    sources: ["Sources/**"],
    dependencies: [
        .project(target: "PagePackage", path: "../PagePackage")
    ]
)

let project = Project(name: "ModelDataResource",
                      organizationName: "page",
                      settings: nil,
                      targets: [target]
)

