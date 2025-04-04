//
//  WidgetInteractivitySlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 4/3/25.
//

import DeckUI
import SwiftUI

struct WidgetInteractivitySlide: SlideProvider {
    let slide = Slide {
        Title("Building Interactive Widgets and Live Activities")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Add interactive elements to widgets or Live Activities.")
                    Words("Interactivity uses standard `AppIntent`s.")
                }
            }
            Column {
                Code(.swift) {
                    #"""
                    struct CodePickerView: View {
                        let codes: [Code]

                        var body: some View {
                            VStack {
                                ForEach(codes) { code in
                                    Button(intent: CodeIntent(code: code))
                                }
                            }
                        }
                    }
                    """#
                }
            }
        }
    }
}
