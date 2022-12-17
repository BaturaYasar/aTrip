//
//  PropertyAPI.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.
//

struct PropertyListRequest: Codable {
    var room_number: Int?
    var dest_type: String?
    var order_by: String?
    var dest_id: Int?
    var locale: String?
    var checkin_date: String?
    var filter_by_currency: String?
    var checkout_date: String?
    var adults_number: Int?
    var units: String?
    var include_adjacency: Bool?
    var page_number: Int?
}
