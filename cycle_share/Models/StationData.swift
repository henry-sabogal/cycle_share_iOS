//
//  StationData.swift
//  cycle_share
//
//  Created by Henry Rodríguez on 26/03/21.
//

import Foundation
import Alamofire

class StationData: ObservableObject {
    @Published var stations = [Station]()
    
    init() {
        loadStationData("https://lenguajesdigitales.com/cycle_share/station")
    }
    
    func loadStationData(_ url: String){
        let session = Session.default
        session.request(url)
            .responseDecodable(of: [Station].self) { response in
                debugPrint(response)
                guard let stations = response.value else { return }
                self.stations = stations
            }
        
    }

}
