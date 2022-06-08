//
//  Products_Leopold.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import Foundation

struct Products_Leopold: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsList_Leopold = [Products_Leopold(name: "Leopold FC980M Ash Yellow PD", image: "LeopoldFC980MAshYellowPD", price: 3990),
                            Products_Leopold(name: "Leopold FC900R Charcoal", image: "LeopoldFC900RCharcoalBluePD", price: 3300),
                            Products_Leopold(name: "Leopold FC900R White", image: "LeopoldFC900RWhiteandGrayPD", price: 5090),
                            Products_Leopold(name: "Leopold FC900R Mint", image: "LeopoldFC900RWhiteMintPD", price: 3790),
                            Products_Leopold(name: "Leopold FC980M Dark Yellow", image: "LeopoldFC980MDarkYellowPD", price: 4480),
                            Products_Leopold(name: "Leopold FC750R Gray Purple", image: "LeopoldFC750RGrayPurplePD", price: 3340),
                            Products_Leopold(name: "Leopold FC750R Dark Blue", image: "LeopoldFC750RDarkBluePD", price: 3310),
                            Products_Leopold(name: "Leopold FC660M Grey Blue", image: "LeopoldFC660MGreyBluePD", price: 3340),
                            Products_Leopold(name: "Leopold FC650 Red Edition", image: "LeopoldFC650MDSWhiteBlueStarPDRedEdition", price: 3380)

]
