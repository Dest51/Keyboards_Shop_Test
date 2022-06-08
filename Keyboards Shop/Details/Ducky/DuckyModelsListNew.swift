//
//  DuckyModelsListNew.swift
//  Keyboards Shop
//
//  Created by Admin on 07.05.2022.
//

import SwiftUI

struct DuckyModelsListNew: View {
    var columns = [GridItem(.adaptive(minimum: 300), spacing: 0)]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(productList, id: \.id) { product in
                    
                    //NavigationLink(destination: DuckyOne3Matcha(), label: {
                    ProductCardDucky(product: product)
                    //})
                }
            }
            .padding(.vertical)
        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)

    }
}

struct DuckyModelsListNew_Previews: PreviewProvider {
    static var previews: some View {
        DuckyModelsListNew()
    }
}
