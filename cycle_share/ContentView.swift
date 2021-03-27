//
//  ContentView.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 16/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StationsView().tabItem { Text("Stations") }.tag(1)
            MyTripsView().tabItem { Text("My Trips") }.tag(2)
            ProfileView().tabItem { Text("Profile").tag(3) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
