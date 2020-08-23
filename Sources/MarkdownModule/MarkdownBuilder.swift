//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2020. 08. 23..
//

import Foundation
import ViperKit

@_cdecl("createModule")
public func createModule() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(MarkdownBuilder()).toOpaque()
}

public final class MarkdownBuilder: ViperBuilder {

    public override func build() -> ViperModule {
        MarkdownModule()
    }
}
