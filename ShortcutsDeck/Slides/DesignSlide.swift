//
//  DesignSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct DesignSlide: SlideProvider {
    let slide = Slide {
        Title("What Should Be an AppIntent?")
        Bullets {
            Words("Short Answer: Everything.")
            Words("Long Answer: Every atomic action a user might take in your app should be represented by **some** app intent.")
            Words("Helps the system understand what users are doing and surface those actions later.")
            Words("Gives your app more ways of exposing content/behavior to other parts of the system.")
            Words("For users who **do** use Shortcuts, being able to chain actions makes custom workflows possible.")
            Words("[Action-Centered Design](https://blog.viditb.com/action-centered-design) by Vidit Bhargava")
            Words("[Design App Intents for System Experiences](https://developer.apple.com/wwdc24/10176) WWDC Video")
            Words("[Expanding Existing App Intents Usage](https://developer.apple.com/documentation/AppIntents/Making-actions-and-content-discoverable-and-widely-available#Expand-existing-App-Intents-usage) Apple Developer Article")
        }
    }
}

#Preview {
    SlidePreviewer(DesignSlide())
}
