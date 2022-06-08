//
//  NizModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct NizModelsList: View {
    var body: some View {

        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                    NavigationLink(destination: Atom68Black(), label: {
                    ProductCardNiz(product: productsList_Niz[0])
                    })
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: Micro82(), label: {
                        ProductCardNiz(product: productsList_Niz[1])
                    })
                        .overlay(Divider(), alignment: .bottom)
                    
                    NavigationLink(destination: _7Waterproof(), label: {
                        ProductCardNiz(product: productsList_Niz[2])
                    })
                        .overlay(Divider(), alignment: .bottom)

            }
                .padding()

            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

    }
}

struct NizModelsList_Previews: PreviewProvider {
    static var previews: some View {
        NizModelsList()
    }
}
