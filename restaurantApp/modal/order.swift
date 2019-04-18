//
//  order.swift
//  restaurantApp
//
//  Created by Andrew Morris on 4/13/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import Foundation

struct Order : Codable {
    var menuItems : [MenuItem]
    
    init(menuItems : [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

