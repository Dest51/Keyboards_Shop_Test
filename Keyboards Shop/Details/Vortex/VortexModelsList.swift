//
//  VortexModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct VortexModelsList: View {
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: VortexCypher(), label: {
                    ProductCardVortex(product: productsList_Vortex[0])
                    })
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: VortexRGBPOK3R(), label: {
                        ProductCardVortex(product: productsList_Vortex[1])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexRGBRace3(), label: {
                        ProductCardVortex(product: productsList_Vortex[2])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexRGBCore(), label: {
                        ProductCardVortex(product: productsList_Vortex[3])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexVibe(), label: {
                        ProductCardVortex(product: productsList_Vortex[4])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexROK3Rv2(), label: {
                        ProductCardVortex(product: productsList_Vortex[5])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: Vortex10(), label: {
                        ProductCardVortex(product: productsList_Vortex[6])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexTab90(), label: {
                        ProductCardVortex(product: productsList_Vortex[7])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: VortexTab90M(), label: {
                        ProductCardVortex(product: productsList_Vortex[8])
                    })



            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct VortexModelsList_Previews: PreviewProvider {
    static var previews: some View {
        VortexModelsList()
    }
}
