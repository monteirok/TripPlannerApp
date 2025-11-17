import Foundation
import SwiftData

@Model
final class ItineraryItem {
    var title: String
    var date: Date
    var time: Date?
    var durationMinutes: Int?
    var notes: String?

    @Relationship var trip: Trip?

    init(title: String, date: Date, time: Date? = nil, durationMinutes: Int? = nil, notes: String? = nil, trip: Trip? = nil) {
        self.title = title
        self.date = date
        self.time = time
        self.durationMinutes = durationMinutes
        self.notes = notes
        self.trip = trip
    }
}
