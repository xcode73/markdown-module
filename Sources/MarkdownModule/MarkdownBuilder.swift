//
//  MarkdownBuilder.swift
//  MarkdownModule
//
//  Created by Tibor Bodecs on 2020. 08. 23..
//

import FeatherCore

/// this method is required for the dynamic module loader
@_cdecl("createMarkdownModule")
public func createMarkdownModule() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(MarkdownBuilder()).toOpaque()
}

/// builds a new module instance
public final class MarkdownBuilder: FeatherModuleBuilder {

    public override func build() -> FeatherModule {
        MarkdownModule()
    }
}
