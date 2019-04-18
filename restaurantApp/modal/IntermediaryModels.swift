//
//  IntermediaryModels.swift
//  restaurantApp
//
//  Created by Andrew Morris on 4/13/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import Foundation

struct Categories : Codable {
    let categories : [String]
}

struct PreparationTime : Codable {
    let prepTime : Int
    
    enum CodingKeys : String, CodingKey {
        case prepTime = "preparation_time"
    }
}
