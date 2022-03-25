//
//  Topping.swift
//  Pizza
//
//  Created by Sharan Mohanadoss on 3/25/22.
//

import Foundation
import SwiftUI

// Topping Model....
struct Topping: Identifiable{
    var id = UUID().uuidString
    var toppingName: String
    var isAdded: Bool = false
    var randomToppingPostions: [CGSize] = []
}
