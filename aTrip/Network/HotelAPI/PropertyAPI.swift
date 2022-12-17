//
//  PropertyAPI.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.
//

import Foundation
import Moya



enum PropertyAPI {
    case propertyList(request: PropertyListRequest)
    case carRentalList(request: CarRentalRequest)
}

extension PropertyAPI:TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://booking-com.p.rapidapi.com") else {fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .propertyList:
            return "v2/hotels/search"
        case .carRentalList:
            return "v1/car-rental/search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .propertyList:
            return .get
        case .carRentalList:
            return .get
        }
        
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Moya.Task {
        switch self {
        case let .propertyList(req):
            return req.urlEncodedQueryString
        case .carRentalList(let req):
            return req.urlEncodedQueryString
        }
    }
    
    var headers: [String : String]? {
        let headers = [
            "X-RapidAPI-Key": "4d0d5ea12cmsh428363f07a05d6bp1a6fd8jsnc7eaa04c8974",
            "X-RapidAPI-Host": "booking-com.p.rapidapi.com"
        ]
        return headers
        
    }
    
    
}

