//
//  Constant.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 17/12/2022.
//

import Foundation

struct Constant {
        struct UserDefaults {
            @UserDefaultWrapperAPI(key: "UD-Article", defaultValue: nil)
            static var articleResponse: [Article?]?
        }
}
