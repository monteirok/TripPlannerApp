import SwiftUI
import SwiftData

@main
struct TripPlannerApp: App {
    var body: some Scene {
        WindowGroup {
            TripListView()
                .modelContainer(for: [Trip.self, ItineraryItem.self, Transport.self, Accommodation.self, Place.self])
        }
    }
}
