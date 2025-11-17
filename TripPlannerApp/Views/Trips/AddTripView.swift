import SwiftUI
import SwiftData

struct AddTripView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @State private var name: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    @State private var destinations: String = ""

    var body: some View {
        Form {
            TextField("Trip name", text: $name)
            DatePicker("Start date", selection: $startDate, displayedComponents: [.date])
            DatePicker("End date", selection: $endDate, displayedComponents: [.date])
            TextField("Destinations (comma separated)", text: $destinations)
        }
        .navigationTitle("Add Trip")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let trip = Trip(name: name, startDate: startDate, endDate: endDate, destinations: destinations.components(separatedBy: ","))
                    modelContext.insert(trip)
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
