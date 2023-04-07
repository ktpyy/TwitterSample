//
//  TimeLine.swift
//  TwitterSample
//
//  Created by takashima kohei on 2023/04/07.
//

import Foundation

struct Tweet {
    var id: String
    var body: String
    var createdAt: Date
    
    init(id: String, body: String, createdAt: Date) {
        self.id = id as String
        self.body = body as String
        self.createdAt = createdAt as Date
    }
}
