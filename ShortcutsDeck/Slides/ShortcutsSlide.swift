//
//  ShortcutsSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct ShortcutsSlideOne: SlideProvider {
    let slide = Slide {
        Title("Using AppIntent in Shortcuts")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Intent Title")
                    Words("Intent Description")
                }
            }
            Column {
                Media(.assetImage("Intent Description"))
            }
        }
    }
}

struct ShortcutsSlideTwo: SlideProvider {
    let slide = Slide {
        Title("Using AppIntent in Shortcuts")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Intent Title")
                    Words("Intent Description", color: .white.opacity(0.3))
                    Words("Parameter Summary")
                }
            }
            Column {
                Media(.assetImage("Selecting Parameters"))
            }
        }
    }
}

struct ShortcutsSlideThree: SlideProvider {
    let slide = Slide {
        Title("Using AppIntent in Shortcuts")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Intent Title")
                    Words("Intent Description", color: .white.opacity(0.3))
                    Words("Parameter Summary")
                    Words("Hidden Parameters")
                }
            }
            Column {
                Media(.assetImage("Hidden Parameters"))
            }
        }
    }
}

struct ShortcutsSlideFour: SlideProvider {
    let slide = Slide {
        Title("Using AppIntent in Shortcuts")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Intent Title")
                    Words("Intent Description", color: .white.opacity(0.3))
                    Words("Parameter Summary")
                    Words("Hidden Parameters")
                    Words("Perform Result")
                }
            }
            Column {
                Media(.assetImage("With Result"))
            }
        }
    }
}

#Preview {
    SlidePreviewer(ShortcutsSlideOne())
}
