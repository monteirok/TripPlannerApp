import SwiftUI

struct AddItineraryItemView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @Bindable var trip: Trip

    @State private var title: String = ""
    @State private var date: Date = Date()

    var body: some View {
        Form {
            TextField("Title", text: $title)
            DatePicker("Date", selection: $date, displayedComponents: [.date])
        }
        .navigationTitle("Add Itinerary Item")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let item = ItineraryItem(title: title, date: date)
                    trip.itineraryItems.append(item)
                    dismiss()
                }
            }
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    dismiss()
                }
            }
        }
    }
}
