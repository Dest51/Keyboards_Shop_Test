//
//  Products_Vortex.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import Foundation

struct Products_Vortex: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsList_Vortex = [Products_Vortex(name: "Vortex Cypher", image: "VortexCypher", price: 3990),
                           Products_Vortex(name: "Vortex RGB POK3R", image: "VortexRGBPOK3R", price: 3300),
                           Products_Vortex(name: "Vortex RGB Race 3", image: "VortexRGBRace3", price: 5090),
                           Products_Vortex(name: "Vortex RGB Core", image: "VortexRGBCore", price: 3790),
                           Products_Vortex(name: "Vortex Vibe", image: "VortexVibe", price: 4480),
                           Products_Vortex(name: "Vortex ROK3R v2", image: "VortexROK3Rv2", price: 3340),
                           Products_Vortex(name: "Vortex 10 ", image: "Vortex10", price: 3310),
                           Products_Vortex(name: "Vortex Tab90", image: "VortexTab90", price: 3340),
                           Products_Vortex(name: "Vortex Tab 90M", image: "VortexTab90M", price: 3380)

]
