//
//  Product_Ducky.swift
//  Keyboards Shop
//
//  Created by Admin on 07.05.2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var navigationPath: String
}

var productList = [Product(name: "Ducky One 3 Matcha", image: "DuckyOne3Matcha", price: 3990, navigationPath: "DuckyOne3Matcha()"),
                   Product(name: "Ducky One 2 Phantom Black", image: "DuckyOne2PhantomBlack", price: 3300, navigationPath: "DuckyOne2PhantomBlack()"),
                   Product(name: "Ducky One 2 RGB Pudding Edition", image: "DuckyOne2RGBPuddingEdition", price: 5090, navigationPath: "DuckyOne2RGBPuddingEdition()"),
                   Product(name: "Ducky One 3 TKL Daybreak", image: "DuckyOne3TKLDaybreak", price: 3790, navigationPath: "DuckyOne3TKLDaybreak()"),
                   Product(name: "Ducky One 2 TKL RGB White", image: "DuckyOne2TKLRGBWhite", price: 4480, navigationPath: "DuckyOne2TKLRGBWhite()"),
                   Product(name: "Ducky One 2 TKL Tuxedo", image: "DuckyOne2TKLTuxedo", price: 3340, navigationPath: "DuckyOne2TKLTuxedo()"),
                   Product(name: "Ducky One 2 TKL Horizon", image: "DuckyOne2TKLHorizon", price: 3310, navigationPath: "DuckyOne2TKLHorizon()"),
                   Product(name: "Ducky One 2 TKL Skyline", image: "DuckyOne2TKLSkyline", price: 3340, navigationPath: "DuckyOne2TKLSkyline()"),
                   Product(name: "Ducky One 2 Mini RGB", image: "DuckyOne2MiniRGB", price: 3380, navigationPath: "DuckyOne2MiniRGB()")

]
