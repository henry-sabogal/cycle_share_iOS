//
//  StationRow.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 26/03/21.
//

import Foundation
import SwiftUI

struct StationRow: View {
    var station: Station
    
    var body: some View{
        VStack{
            Text(station.name)
            Text("\(station.currentDockCount)")
        }
    }
}
