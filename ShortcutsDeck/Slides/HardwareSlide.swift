//
//  HardwareSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 4/3/25.
//

import DeckUI
import SwiftUI

struct HardwareSlide: SlideProvider {
    let slide = Slide {
        Title("Hardware Interaction")
        Columns {
            Column {
                Bullets {
                    Words("Also based on App Shortcuts")
                    Words("Users can assign actions to some hardware")
                    Words("Action Button on Apple Watch & iPhone")
                    Words("Squeeze and tap interactions on Apple Pencil")
                    Words("[Responding to the Action Button on Apple Watch Ultra](https://developer.apple.com/documentation/AppIntents/ActionButtonArticle)")
                }
            }
            Column {
                Media(.assetImage("Action Button"))
            }
        }
    }
}

#Preview {
    SlidePreviewer(HardwareSlide())
}
