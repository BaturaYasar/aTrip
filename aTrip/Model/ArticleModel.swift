//
//  ArticleJson.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 17/12/2022.
//

import Foundation

struct ArticleModel:Codable {
    var articles: [Article]?
}

struct Article: Codable {
    var desc: String?
    var title: String?
    var imageUrl: String?
    var id: Int?
}
