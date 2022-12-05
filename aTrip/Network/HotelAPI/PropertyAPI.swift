//
//  PropertyAPI.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.
//

import Foundation
import Moya

enum PropertyAPI {
    case propertyList(request:PropertyListRequest)
}

extension PropertyAPI:TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://hotels4.p.rapidapi.com") else {fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .propertyList:
            return "properties/v2/list"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .propertyList:
            return .post
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Moya.Task {
        switch self {
        case .propertyList(let req):
            return .requestJSONEncodable(req)
        }
    }
    
    var headers: [String : String]? {
        let headers = [
            "content-type": "application/json",
            "X-RapidAPI-Key": "4d0d5ea12cmsh428363f07a05d6bp1a6fd8jsnc7eaa04c8974",
            "X-RapidAPI-Host": "hotels4.p.rapidapi.com"
        ]
        return headers
        
    }
    
    
}

