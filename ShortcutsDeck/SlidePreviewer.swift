//
//  SlidePreviewer.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

protocol SlideProvider {
    var slide: Slide { get }
}

struct SlidePreviewer: View {
    private let provider: SlideProvider
    init(_ provider: SlideProvider) {
        self.provider = provider
    }

    var body: some View {
        Presenter(deck: Deck(title: "Preview") {
            provider.slide
        }).frame(width: 1024, height: 576)
    }
}
