//
//  CarRentalRequest.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 10/12/2022.
//

import Foundation

struct CarRentalRequest: Codable {
    var pick_up_longitude: Double?
    var pick_up_latitude: Double?
    var from_country: String?
    var currency: String?
    var drop_off_datetime: String?
    var locale: String?
    var sort_by: String?
    var drop_off_latitude: Double?
    var pick_up_datetime: String?
    var drop_off_longitude: Double?
}
