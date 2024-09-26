//
//  ConclusionSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct ConclusionSlide: SlideProvider {
    let slide = Slide(alignment: .center) {
        Title("Fin.", subtitle: "Any Questions?")
    }
}

#Preview {
    SlidePreviewer(ConclusionSlide())
}
