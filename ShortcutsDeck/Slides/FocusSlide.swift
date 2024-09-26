//
//  FocusSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct FocusSlide: SlideProvider {
    let slide = Slide {
        Title("Focus Filters")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Exposes configuration based on a user’s Focus.")
                    Words("Users can set parameters per Focus.")
                    Words("Conform to `SetFocusFilterIntent`.")
                }
            }
            Column {
                Code(.swift, enableHighlight: true) {
                    #"""
                    struct ExampleFocusFilterIntent: SetFocusFilterIntent {
                        @Parameter(title: "Use Dark Mode", default: false)
                        var alwaysUseDarkMode: Bool

                        @Parameter(title: "Status Message")
                        var status: String?

                        @Parameter(title: "Selected Account")
                        var account: AccountEntity?
                    }
                    """#
                }
            }
        }
    }
}

#Preview {
    SlidePreviewer(FocusSlide())
}
