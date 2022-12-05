//
//  PropertyListRequest.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.
//

import Foundation

// MARK: - SearchResponse
struct PropertyListRequest: Codable {
    let currency: String?
    let eapid: Int?
    let locale: String?
    let siteID: Int?
    let destination: Destination?
    let checkInDate, checkOutDate: CheckDate?
    let rooms: [Room]?
    let resultsStartingIndex, resultsSize: Int?
    let sort: String?
    let filters: Filters?

    enum CodingKeys: String, CodingKey {
        case currency, eapid, locale
        case siteID = "siteId"
        case destination, checkInDate, checkOutDate, rooms, resultsStartingIndex, resultsSize, sort, filters
    }

    init(currency: String?, eapid: Int?, locale: String?, siteID: Int?, destination: Destination?, checkInDate: CheckDate?, checkOutDate: CheckDate?, rooms: [Room]?, resultsStartingIndex: Int?, resultsSize: Int?, sort: String?, filters: Filters?) {
        self.currency = currency
        self.eapid = eapid
        self.locale = locale
        self.siteID = siteID
        self.destination = destination
        self.checkInDate = checkInDate
        self.checkOutDate = checkOutDate
        self.rooms = rooms
        self.resultsStartingIndex = resultsStartingIndex
        self.resultsSize = resultsSize
        self.sort = sort
        self.filters = filters
    }
}

// MARK: - Destination
struct Destination: Codable {
    let regionID: String?

    enum CodingKeys: String, CodingKey {
        case regionID = "regionId"
    }

    init(regionID: String?) {
        self.regionID = regionID
    }
}

// MARK: - Filters
struct Filters: Codable {
    let price: Price?

    init(price: Price?) {
        self.price = price
    }
}

// MARK: - Price
struct Price: Codable {
    let max, min: Int?

    init(max: Int?, min: Int?) {
        self.max = max
        self.min = min
    }
}

// MARK: - Room
struct Room: Codable {
    let adults: Int?

    init(adults: Int?) {
        self.adults = adults
    }
}

