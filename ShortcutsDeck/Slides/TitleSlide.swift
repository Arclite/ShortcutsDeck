//
//  TitleSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct TitleSlide: SlideProvider {
    let slide = Slide(alignment: .center) {
        Title("AppIntents", subtitle: "Why You Should Use Them… Even Now")
    }
}

#Preview {
    SlidePreviewer(TitleSlide())
}
