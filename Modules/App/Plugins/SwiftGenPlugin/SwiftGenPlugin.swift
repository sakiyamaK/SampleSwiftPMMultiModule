//
//  SwiftGenPlugin.swift
//  
//
//  Created by sakiyamaK on 2022/11/28.
//

import PackagePlugin

@main
struct SwiftGenPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        let outputFilesDirectory = context.pluginWorkDirectory

        let targetAssets = target.directory.appending("Resources/Assets.xcassets")
        let outputFile = outputFilesDirectory.appending("Assets.swift")

        return [
            .prebuildCommand(
                displayName: "SwiftGen",
                executable: try context.tool(named: "swiftgen").path,
                arguments: [
                    "run", "xcassets",
                    targetAssets.string,
                    "--param", "publicAccess", "--templateName", "swift5", "--output",
                    outputFile.string,
                ],
                environment: [:],
                outputFilesDirectory: outputFilesDirectory)
        ]
    }
}
