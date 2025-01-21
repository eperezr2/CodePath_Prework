//
//  Item.swift
//  CodePath_Prework
//
//  Created by Emily Perez-Rodriguez on 1/15/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
