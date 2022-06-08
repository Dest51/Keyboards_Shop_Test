//
//  LeopoldModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct LeopoldModelsList: View {
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: LeopoldFC980MAshYellowPD(), label: {
                    ProductCardLeopold(product: productsList_Leopold[0])
                    })
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: LeopoldFC900RCharcoalBluePD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[1])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC900RWhiteandGrayPD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[2])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC900RWhiteMintPD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[3])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC980MDarkYellowPD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[4])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC750RGrayPurplePD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[5])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC750RDarkBluePD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[6])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC660MGreyBluePD(), label: {
                        ProductCardLeopold(product: productsList_Leopold[7])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: LeopoldFC650MDSWhiteBlueStarPDRedEdition(), label: {
                        ProductCardLeopold(product: productsList_Leopold[8])
                    })



            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct LeopoldModelsList_Previews: PreviewProvider {
    static var previews: some View {
        LeopoldModelsList()
    }
}
