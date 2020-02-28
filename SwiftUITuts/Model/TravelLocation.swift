//
//  TravelLocation.swift
//  SwiftUITuts
//
//  Created by Gabriel on 2/28/20.
//  Copyright © 2020 TCS. All rights reserved.
//

import Foundation
import CoreLocation

struct TravelLocation : Identifiable {
    var id: Int
    var name : String
    var image : String
    var desc : String
    var coordinate : Coordinates
    var locCoordinates : CLLocationCoordinate2D {
       return CLLocationCoordinate2D(latitude: coordinate.lat, longitude: coordinate.lng)
    }
}

struct Coordinates {
    var lng : Double
    var lat : Double
}

var londonBridge = TravelLocation(id: 1, name: "London bridge", image: "london", desc: "its a bridge in london....", coordinate: Coordinates(lng: 10.0, lat:10.0))

var pisa = TravelLocation(id: 2, name: "pisa bridge", image: "pisa", desc: "its a tower in italy....", coordinate: Coordinates(lng:10.40, lat:43.722))
let locArray = [londonBridge,pisa]
