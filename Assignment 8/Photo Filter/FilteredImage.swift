//
//  FilteredImage.swift
//  Filter
//
//

import SwiftUI
import CoreImage

struct FilteredImage: Identifiable {
    
    var id = UUID().uuidString
    var image: UIImage
    var filter: CIFilter
    var isEditable: Bool
}
