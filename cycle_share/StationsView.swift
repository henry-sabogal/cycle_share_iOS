//
//  StationsView.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 16/03/21.
//

import SwiftUI
import MapKit

struct StationsView: View {
    @State private var seatle = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 47.62139, longitude: -122.33040), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $seatle)
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            StationList()
            
            Spacer()
        }
        
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
