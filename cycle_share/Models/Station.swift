//
//  Station.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 26/03/21.
//

import Foundation
import CoreLocation

struct Station: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var lon: Double
    var lat: Double
    var currentDockCount: Int
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
    
    enum CodingKeys: String, CodingKey{
        case id
        case name
        case lon
        case lat
        case currentDockCount = "current_dockCount"
    }
}
