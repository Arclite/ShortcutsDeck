//
//  SpotlightSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct SpotlightSlide: SlideProvider {
    let slide = Slide {
        Title("Spotlight Actions")
        Columns {
            Column {
                Bullets {
                    Words("Can expose your app’s actions in Spotlight Search.")
                    Words("Users can start flows in your app directly from search results.")
                    Words("Can show multiple actions under app result…")
                    Words("…or highlight a single action result")
                    Words("[Design Shortcuts for Spotlight](https://developer.apple.com/videos/play/wwdc2023/10193/)")
                    Words("[Spotlight Your App With App Shortcuts](https://developer.apple.com/wwdc23/10102)")
                }
                Code(.swift, enableHighlight: true) {
                    #"""
                    struct CodeShortcuts: AppShortcutsProvider {
                        static var appShortcuts: [AppShortcut] {
                            codes.map { code in
                                AppShortcut(
                                    intent: CodeIntent(code: code),
                                    phrases: ["Display \(code.name)."]
                                )
                            }
                        }                    
                    }
                    """#
                }
            }
            Column {
                Media(.assetImage("Actions"))
                Media(.assetImage("Results"))
            }
        }
    }
}

#Preview {
    SlidePreviewer(SpotlightSlide())
}
