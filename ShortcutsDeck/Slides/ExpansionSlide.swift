//
//  ExpansionSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct ExpansionSlide: SlideProvider {
    let slide = Slide {
        Title("What (Else) are AppIntents?")
        Bullets {
            Words("Configuring Widgets")
            Words("Custom Control Center Items")
            Words("Interactive Widgets")
            Words("Interactive Live Activities")
            Words("Apple Intelligence")
            Words("Spotlight Actions")
            Words("Hardware Interactions")
            Words("Focus Filters")
        }
    }
}

#Preview {
    SlidePreviewer(ExpansionSlide())
}
