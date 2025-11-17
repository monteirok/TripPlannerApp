import SwiftUI
import SwiftData

struct ItineraryListView: View {
    @Bindable var trip: Trip

    var body: some View {
        List {
            ForEach(trip.itineraryItems) { item in
                Text(item.title)
            }
        }
        .navigationTitle("Itinerary")
        .toolbar {
            NavigationLink(destination: AddItineraryItemView(trip: trip)) {
                Image(systemName: "plus")
            }
        }
    }
}
