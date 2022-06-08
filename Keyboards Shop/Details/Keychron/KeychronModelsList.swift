//
//  KeychronModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct KeychronModelsList: View {
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: KeychronK1(), label: {
                    ProductCardKeychron(product: productsList_Keychron[0])
                    })
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: KeychronK2AluminumRGB(), label: {
                        ProductCardKeychron(product: productsList_Keychron[1])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK4AluminumRGBHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[2])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK8WhiteLEDHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[3])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK8RGBHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[4])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK10AluminumRGBHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[5])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK12OpticalAluminumRGBHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[6])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK12WhiteLEDHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[7])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: KeychronK12AluminumNon_BacklitHotswap(), label: {
                        ProductCardKeychron(product: productsList_Keychron[8])
                    })



            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct KeychronModelsList_Previews: PreviewProvider {
    static var previews: some View {
        KeychronModelsList()
    }
}
