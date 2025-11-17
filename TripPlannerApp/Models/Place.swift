import Foundation
import SwiftData

@Model
final class Place {
    var name: String
    var category: String?
    var latitude: Double?
    var longitude: Double?
    var notes: String?
    var pinned: Bool = false

    @Relationship var trip: Trip?
    
    init(
        name: String,
        category: String? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        notes: String? = nil,
        pinned: Bool = false,
        trip: Trip? = nil
    ) {
        self.name = name
        self.category = category
        self.latitude = latitude
        self.longitude = longitude
        self.notes = notes
        self.pinned = pinned
        self.trip = trip
    }
}
