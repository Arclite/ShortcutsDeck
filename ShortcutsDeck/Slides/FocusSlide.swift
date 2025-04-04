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
                Code(.swift, enableHighlight: true) {
                    #"""
                    struct NoirFocusFilterIntent: SetFocusFilterIntent {
                        @Parameter(title: "Enabled", default: .auto)
                        var isEnabled: EnabledEntity

                        @Parameter(title: "Theme")
                        var theme: ThemeEntity?
                    }
                    
                    enum EnabledEntity: AppEnum {
                        case auto, on, off
                    }
                    
                    enum ThemeEntity: AppEnum {
                        case dark, black, gray, sepia
                    }
                    """#
                }
            }
            Column {
                Media(.assetImage("Focus"))
            }
        }
    }
}

#Preview {
    SlidePreviewer(FocusSlide())
}
