import Foundation
import SwiftData

enum TransportType: String, Codable, CaseIterable {
    case flight, bus, train, ferry, taxi, rideshare, other
}

@Model
final class Transport {
    var type: TransportType
    var provider: String?
    var confirmationCode: String?
    var departureLocation: String
    var arrivalLocation: String
    var departureDate: Date
    var arrivalDate: Date
    var price: Double?

    @Relationship var trip: Trip?

    init(
        type: TransportType,
        provider: String? = nil,
        confirmationCode: String? = nil,
        departureLocation: String,
        arrivalLocation: String,
        departureDate: Date,
        arrivalDate: Date,
        price: Double? = nil,
        trip: Trip? = nil
    ) {
        self.type = type
        self.provider = provider
        self.confirmationCode = confirmationCode
        self.departureLocation = departureLocation
        self.arrivalLocation = arrivalLocation
        self.departureDate = departureDate
        self.arrivalDate = arrivalDate
        self.price = price
        self.trip = trip
    }
}
