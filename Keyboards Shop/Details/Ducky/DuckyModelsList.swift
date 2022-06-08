//
//  DuckyModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 04.04.2022.
//

import SwiftUI


struct DuckyModelsList: View {
    

    
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: DuckyOne3Matcha(), label: {
                    ProductCardDucky(product: productList[0])
                    })
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: DuckyOne2PhantomBlack(), label: {
                    ProductCardDucky(product: productList[1])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2RGBPuddingEdition(), label: {
                    ProductCardDucky(product: productList[2])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne3TKLDaybreak(), label: {
                    ProductCardDucky(product: productList[3])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2TKLRGBWhite(), label: {
                    ProductCardDucky(product: productList[4])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2TKLTuxedo(), label: {
                    ProductCardDucky(product: productList[5])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2TKLHorizon(), label: {
                    ProductCardDucky(product: productList[6])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2TKLSkyline(), label: {
                    ProductCardDucky(product: productList[7])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: DuckyOne2MiniRGB(), label: {
                    ProductCardDucky(product: productList[8])
                    })



            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct DuckyModelsList_Previews: PreviewProvider {
    static var previews: some View {
        DuckyModelsList()
    }
}
