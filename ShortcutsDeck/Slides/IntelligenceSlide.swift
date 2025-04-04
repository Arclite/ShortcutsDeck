//
//  IntelligenceSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct IntelligenceSlide: SlideProvider {
    let slide = Slide {
        Title("Apple Intelligence")
        Columns {
            Column {
                Bullets(style: .dash) {
                    Words("Still coming in the future… probably? Here’s what we know now:")
                    Words("`AppIntent`s need to adopt specific “domains” representing their functionality.")
                    Words("Available domains are: Books, Browser, Camera, Document Reader, File Management, Journaling, Email, Photos & Videos, Presentations, Spreadsheets, Search, Whiteboard, and Word Processing")
                    Words("Each domain has a set of defined actions.")
                }
            }
            Column {
                Code(.swift, enableHighlight: true) {
                    #"""
                    @AssistantIntent(schema: .photos.openAsset)
                    struct OpenAssetIntent: OpenIntent {
                        var target: AssetEntity


                        @Dependency
                        var library: MediaLibrary


                        @Dependency
                        var navigation: NavigationManager


                        @MainActor
                        func perform() async throws -> some IntentResult {
                            let assets = library.assets(for: [target.id])
                            guard let asset = assets.first else {
                                throw IntentError.noEntity
                            }


                            navigation.openAsset(asset)
                            return .result()
                        }
                    }
                    """#
                }
            }
        }
    }
}

#Preview {
    SlidePreviewer(IntelligenceSlide())
}
