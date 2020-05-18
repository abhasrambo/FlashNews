//
//  PostData.swift
//  FlashNews
//
//  Created by Abhas Kumar on 5/17/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import Foundation

struct Results:Decodable {
    let articles: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return publishedAt
    }
    let publishedAt: String
    let description: String
    let title: String
    let url: String?
}
