import SwiftUI
import SwiftData

struct TripListView: View {
    @Query(sort: \Trip.startDate) var trips: [Trip]

    var body: some View {
        NavigationView {
            List {
                ForEach(trips) { trip in
                    NavigationLink(destination: TripDetailView(trip: trip)) {
                        Text(trip.name)
                    }
                }
            }
            .navigationTitle("Trips")
            .toolbar {
                NavigationLink(destination: AddTripView()) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
