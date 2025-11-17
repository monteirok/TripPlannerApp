import Foundation
import SwiftData

@Model
final class Trip {
    @Attribute(.unique) var id: UUID
    var name: String
    var startDate: Date
    var endDate: Date
    var destinations: [String]
    var notes: String?
    var budget: Double?

    @Relationship(deleteRule: .cascade) var itineraryItems: [ItineraryItem]
    @Relationship(deleteRule: .cascade) var transports: [Transport]
    @Relationship(deleteRule: .cascade) var accommodations: [Accommodation]
    @Relationship(deleteRule: .cascade) var places: [Place]

    init(
        id: UUID = .init(),
        name: String,
        startDate: Date,
        endDate: Date,
        destinations: [String]
    ) {
        self.id = id
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.destinations = destinations
        self.itineraryItems = []
        self.transports = []
        self.accommodations = []
        self.places = []
    }
}
