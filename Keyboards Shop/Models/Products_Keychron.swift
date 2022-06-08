//
//  Products_Keychron.swift
//  Keyboards Shop
//
//  Created by Admin on 07.06.2022.
//

import Foundation

struct Products_Keychron: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsList_Keychron = [Products_Keychron(name: "Keychron K1", image: "KeychronK1", price: 3990),
                             Products_Keychron(name: "Keychron K2 Aluminum RGB", image: "KeychronK2AluminumRGB", price: 3300),
                             Products_Keychron(name: "Keychron K4 Aluminum RGB ", image: "KeychronK4AluminumRGBHotswap", price: 5090),
                             Products_Keychron(name: "Keychron K8 White LED ", image: "KeychronK8WhiteLEDHotswap", price: 3790),
                             Products_Keychron(name: "Keychron K8 RGB Hotswap", image: "KeychronK8RGBHotswap", price: 4480),
                             Products_Keychron(name: "Keychron K10 Aluminum RGB ", image: "KeychronK10AluminumRGBHotswap", price: 3340),
                             Products_Keychron(name: "Keychron K12 Optical RGB ", image: "KeychronK12OpticalAluminumRGBHotswap", price: 3310),
                             Products_Keychron(name: "Keychron K12 White LED", image: "KeychronK12WhiteLEDHotswap", price: 3340),
                             Products_Keychron(name: "Keychron K12 Aluminum", image: "KeychronK12AluminumNon-BacklitHotswap", price: 3380)

]
