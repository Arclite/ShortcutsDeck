//
//  ContentView.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct ContentView: View {
    var body: some View {
        Presenter(deck: deck, slideTransition: .fade)
    }

    var deck: Deck {
        Deck(title: "AppIntents") {
            TitleSlide().slide
            IntroSlide().slide
            UsesSlide().slide
            UsesSlideTwo().slide
            ExpansionSlide().slide
            DesignSlide().slide
            BuildingSlide().slide
            DataSlide().slide
            ShortcutsSlideOne().slide
            ShortcutsSlideTwo().slide
            ShortcutsSlideThree().slide
            ShortcutsSlideFour().slide
            IntelligenceSlide().slide
            WidgetConfigurationSlide().slide
            WidgetInteractivitySlide().slide
            SpotlightSlide().slide
            HardwareSlide().slide
            FocusSlide().slide
            ConclusionSlide().slide
        }
    }
}

#Preview {
    ContentView()
}
