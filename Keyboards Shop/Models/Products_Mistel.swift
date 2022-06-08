//
//  Products_Mistel.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import Foundation

struct Products_Mistel: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsList_Mistel = [Products_Mistel(name: "Barocco MD770", image: "BaroccoMD770", price: 3990)

]
