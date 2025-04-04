//
//  BuildingSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct BuildingSlide: SlideProvider {
    let slide = Slide {
        Title("Building Basic AppIntents")
        Code(.swift, enableHighlight: true) {
            #"""
            struct CodeIntent: AppIntent {
                static let title: LocalizedStringResource = "CodeIntent.title"
                static let description: IntentDescription = "CodeIntent.description"
            
                @Parameter(title: "CodeIntent.hasBackground", default: true)
                var hasBackground: Bool
            
                @Parameter(title: "CodeIntent.code")
                var code: BarcodeEntity
            
                static var parameterSummary: some ParameterSummary {
                    Summary("CodeIntent.parameterSummary\(\.$code)") {
                        \.$hasBackground
                    }
                }
            
                func perform() async throws -> some IntentResult & ReturnsValue<IntentFile> {
                    let imageData = try CodeImageRenderer().pngData(from: code.value, withBackground: true)
                    let file = IntentFile(data: imageData, filename: code.name, type: .png)
            
                    return .result(value: file)
                }
            }
            """#
        }
    }
}

#Preview {
    SlidePreviewer(BuildingSlide())
}
