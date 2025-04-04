//
//  UsesSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 4/3/25.
//

import DeckUI
import SwiftUI

struct UsesSlide: SlideProvider {
    let slide = Slide() {
        Title("What are AppIntents Used For?")
        Bullets(style: .dash) {
            Words("Building actions and automations in the Shortcuts app.")
            Words("Providing personal context and actions to Siri and Apple Intelligence.")
        }
    }
}

struct UsesSlideTwo: SlideProvider {
    let slide = Slide() {
        Title("What are AppIntents Used For?")
        Bullets(style: .dash) {
            Words("Building actions and automations in the Shortcuts app.")
            Words("~~Providing personal context and actions to Siri and Apple Intelligence.~~")
            Words("Eventually. Maybe.")
        }
    }
}

#Preview {
    SlidePreviewer(UsesSlide())
}
