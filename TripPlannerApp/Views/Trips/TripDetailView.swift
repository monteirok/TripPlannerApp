import SwiftUI

struct TripDetailView: View {
    @Bindable var trip: Trip

    var body: some View {
        VStack {
            Text(trip.name)
                .font(.title)
                .padding()
            // Additional details can go here
        }
        .navigationTitle(trip.name)
    }
}
