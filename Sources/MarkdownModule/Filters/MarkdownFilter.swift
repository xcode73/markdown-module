//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 21..
//

import Ink

/// markdown filter
struct MarkdownFilter: FeatherFilter {

    /// unique key for the filter
    var key: String { "markdown" }
    /// label for the filter
    var label: String { "Markdown (Ink)" }

    /// render markdown content using the MarkdownParser method, then place the result into a center aligned div
    func filter(_ input: String, _ req: Request) async throws -> String {
        var parser = MarkdownParser()
        let modifier = Modifier(target: .images) { html, markdown in
            return html.replacingOccurrences(of: "<img src", with: "<img class=\"\" src")
        }
        parser.addModifier(modifier)

        let html = parser.html(from: input.replacingOccurrences(of: "\r", with: "\n"))
        return """
        <div class="container">
            <section>
                \(html)
            </section>
        </div>
        """
    }
}
