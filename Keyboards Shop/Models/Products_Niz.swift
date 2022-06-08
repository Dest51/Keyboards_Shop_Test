//
//  Products_Niz.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import Foundation

struct Products_Niz: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsList_Niz = [Products_Niz(name: "Niz Atom 68 Black", image: "Atom68Black", price: 3990),
                        Products_Niz(name: "Niz Micro 82", image: "Micro82", price: 3300),
                        Products_Niz(name: "Niz 87 Waterproof", image: "87Waterproof", price: 5090)
]
