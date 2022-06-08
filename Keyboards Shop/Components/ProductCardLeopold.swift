//
//  ProductCardLeopold.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct ProductCardLeopold: View {
    var product: Products_Leopold
    @State private var showingAlertOnFavouriteButton = false
    @State private var showingAlertOnCartButton = false

    @State private var favouriteImage = "favourite_unclicked_darktheme"
    @State private var favouriteAlert = ""
    
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            Image(product.image).resizable().frame(width: 120, height: 70)
                .cornerRadius(3)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text(product.name)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("\(product.price) UAH")
                    .foregroundColor(.gray)
                
                //Button("More...", action: {})
            }
            Spacer(minLength: 0)
            VStack {
            Button{
                //print("Added to favourites!")
                showingAlertOnFavouriteButton = true
                if favouriteImage == "favourite_unclicked_darktheme" {
                    favouriteImage = "favourite_clicked"
                    favouriteAlert = "Added to favourites"
                }
                else {
                    
                    favouriteImage = "favourite_unclicked_darktheme"
                    favouriteAlert = "Deleted from favourites"
                }
            } label: {
                Image(favouriteImage).resizable().frame(width: 20, height: 20)
            }
            .alert(isPresented: $showingAlertOnFavouriteButton) {
                        Alert(title: Text(favouriteAlert), dismissButton: .default(Text("Ok")))
                    }
            .padding(.bottom, 2.0)
                
            Button{
                showingAlertOnCartButton = true
            } label: {
                Image("cart2").resizable().frame(width: 35, height: 35)
            }
            .alert(isPresented: $showingAlertOnCartButton) {
                        Alert(title: Text("Added succesfully"), dismissButton: .default(Text("Continue shopping")))
                    }
            .padding(.bottom, 3.0)
            }
            
            
        }.padding(.bottom)
            //.overlay(Divider(), alignment: .bottom)
            //.padding(.horizontal)
    }
}

struct ProductCardLeopold_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardLeopold(product: productsList_Leopold[0])
    }
}
