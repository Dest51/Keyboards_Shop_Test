//
//  MistelModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct MistelModelsList: View {
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: BaroccoMD770(), label: {
                    ProductCardMistel(product: productsList_Mistel[0])
                    })
                        .overlay(Divider(), alignment: .bottom)


            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct MistelModelsList_Previews: PreviewProvider {
    static var previews: some View {
        MistelModelsList()
    }
}
