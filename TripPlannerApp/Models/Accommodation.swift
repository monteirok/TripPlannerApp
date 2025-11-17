import Foundation
import SwiftData

@Model
final class Accommodation {
    var name: String
    var address: String
    var checkIn: Date
    var checkOut: Date
    var confirmationNumber: String?
    var price: Double?

    @Relationship var trip: Trip?

    init(
        name: String,
        address: String,
        checkIn: Date,
        checkOut: Date,
        confirmationNumber: String? = nil,
        price: Double? = nil,
        trip: Trip? = nil
    ) {
        self.name = name
        self.address = address
        self.checkIn = checkIn
        self.checkOut = checkOut
        self.confirmationNumber = confirmationNumber
        self.price = price
        self.trip = trip
    }
}
