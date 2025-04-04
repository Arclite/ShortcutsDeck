//
//  IntroSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct IntroSlide: SlideProvider {
    let slide = Slide() {
        Title("What are AppIntents?")
        Bullets(style: .dash) {
            Words("AppIntents expose actions from your app to the wider operating system.")
            Words("Defined completely in Swift (and **only** Swift) code.")
            Words("Consume parameters (strings, files, numbers, etc.).")
            Words("Perform actions.")
            Words("Return results (strings, files, numbers, etc.).")
        }
    }
}

#Preview {
    SlidePreviewer(IntroSlide())
}
