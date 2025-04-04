//
//  WidgetsSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct WidgetConfigurationSlide: SlideProvider {
    let slide = Slide {
        Title("Configuring Widgets")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Used for configuration of “basic” widgets.")
                    Words("Conform to `WidgetConfigurationIntent`.")
                    Words("Parameters are displayed in widget picker.")
                }
            }
            Column {
                Code(.swift) {
                    #"""
                    public struct CodeDisplayConfigurationIntent: WidgetConfigurationIntent {
                        public static let title: LocalizedStringResource = "DisplayCodeIntent.title"
                        public static let description: IntentDescription = "DisplayCodeIntent.description"

                        public init() {}

                        public init(code: Code) {
                            self.code = BarcodeEntity(code: code)
                        }

                        @Parameter(
                            title: "DisplayCodeIntent.code.title"
                        )
                        public var code: BarcodeEntity?
                    }
                    """#
                }
            }
        }
    }
}

#Preview {
    SlidePreviewer(WidgetConfigurationSlide())
}
