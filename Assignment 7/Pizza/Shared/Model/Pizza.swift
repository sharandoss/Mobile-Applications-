//
//  Pizza.swift
//  Pizza
//
//  Created by Sharan Mohanadoss on 3/25/22.
//

import Foundation
import SwiftUI

// Pizza model and sample Pizzas....
struct Pizza: Identifiable{
    var id = UUID().uuidString
    var breadName: String
    var toppings: [Topping] = []
}
