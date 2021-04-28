//
//  MarkdownModule.swift
//  MarkdownModule
//
//  Created by Tibor Bödecs on 2020. 06. 17..
//

import FeatherCore

final class MarkdownModule: FeatherModule {

    static let moduleKey: String = "markdown"

    /// register the content filters hook
    func boot(_ app: Application) throws {
        app.hooks.register(.contentFilters, use: contentFiltersHook)
    }

    // MARK: - hooks
    
    /// create a content filter instance and return it
    func contentFiltersHook(args: HookArguments) -> [ContentFilter] {
        [MarkdownFilter()]
    }
}
