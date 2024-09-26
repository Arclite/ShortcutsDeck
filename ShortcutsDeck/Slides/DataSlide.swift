//
//  DataSlide.swift
//  ShortcutsDeck
//
//  Created by Geoff Pado on 8/22/24.
//

import DeckUI
import SwiftUI

struct DataSlide: SlideProvider {
    let slide = Slide {
        Title("Exposing Data to AppIntents")
        Code(.swift, enableHighlight: true) {
            #"""
            public struct BarcodeEntity: AppEntity, Identifiable {
                public static let typeDisplayRepresentation: TypeDisplayRepresentation = "BarcodeEntity.typeDisplayRepresentation"

                public let code: Code
                public var id: Code.ID { code.id }
                public var displayRepresentation: DisplayRepresentation {
                    DisplayRepresentation(title: "\(code.name)")
                }
            }
            
            public struct BarcodeQuery: EntityQuery {
                public func entities(for identifiers: [BarcodeEntity.ID]) throws -> [BarcodeEntity] {
                    return try allCodes.filter { identifiers.contains($0.id) }
                }

                public func suggestedEntities() throws -> [BarcodeEntity] { try allCodes }

                private var allCodes: [BarcodeEntity] {
                    get throws {
                        try Persistence.defaultRepository.codes
                        return codes.map(BarcodeEntity.init(code:))
                    }
                }
            }

            """#
        }
    }
}

#Preview {
    SlidePreviewer(DataSlide())
}
