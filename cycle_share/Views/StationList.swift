//
//  StationList.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 26/03/21.
//

import SwiftUI

struct StationList: View {
    @ObservedObject var stations = StationData()
    
    var body: some View{
        List(stations.stations) { station in
            StationRow(station: station)
        }
    }
}

struct StationList_Previews: PreviewProvider {
    static var previews: some View{
        StationList()
    }
}
