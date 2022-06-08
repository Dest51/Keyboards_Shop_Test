//
//  DuckyOne2RGBPuddingEdition.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI
struct ImageSliderViewDuckyOne2RGBPuddingEdition: View {
    
    // 1
    private let images = ["DuckyOne2RGBPuddingEdition", "DuckyOne2RGBPuddingEdition", "DuckyOne2RGBPuddingEdition"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 210)
                    .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}
struct DuckyOne2RGBPuddingEdition: View {
    @Environment(\.colorScheme) var colorSchemes

    
    @State private var showingAlertOnOrderButton = false
    @State private var showingAlertOnFavouriteButton = false
    @State private var showingAlertOnCartButton = false

    @State private var favouriteImage = "favourite_unclicked_darktheme"
    @State private var favouriteAlert = ""


    var body: some View {
        
        
        ScrollView{
            
            VStack{

                VStack{
                    ImageSliderViewDuckyOne2RGBPuddingEdition()
                    .frame(height: 210)
                    .padding(.top)
                    
                
                Text("Клавиатура проводная Ducky One 2 RGB Pudding Edition")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.primary)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/)
                }
                Divider()
                
                HStack(){
                    
                    Text("5 290 ₴")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .frame(width: 180, alignment: .leading)
                    
                    
                    Image("reviewsImage_transparent")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 19, alignment: .trailing)

                        Text("215")
                            .font(.system(size: 12))
                            .foregroundColor(Color.primary)
                    
                    Button{
                        showingAlertOnFavouriteButton = true
                        if favouriteImage == "favourite_unclicked_darktheme" {
                            favouriteImage = "favourite_clicked"
                            favouriteAlert = "Added to favourites"
                        }
                        else {
                            
                            favouriteImage = "favourite_unclicked_darktheme"
                            favouriteAlert = "Deleted from favourites"
                        }
                    }
                label: {
                    
                    Image(favouriteImage)
                        .resizable()
                        .frame(width: 25, height: 25)
                }

                .alert(isPresented: $showingAlertOnFavouriteButton) {
                            Alert(title: Text(favouriteAlert), dismissButton: .default(Text("Ok")))
                        }
                    
                    
                }
                .padding(.top)

                
                Button {
                    showingAlertOnOrderButton = true
                } label: {
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                            .fill(Color.green)
                            .frame(height: 45)
                            .padding(.horizontal)
                        
                        Text("Fast order")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                    }
                }
                .alert(isPresented: $showingAlertOnOrderButton) {
                            Alert(title: Text("Order confirmed"), dismissButton: .default(Text("Got it!")))
                        }
                
                Button {
                    showingAlertOnCartButton = true
                } label: {
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                            //.fill(Color.green)
                            .frame(height: 45)
                            .padding(.horizontal)
                        
                        Text("Add to cart")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(Color.green)
                        
                    }
                }
                .padding(.top, 10.0)
                .alert(isPresented: $showingAlertOnCartButton) {
                            Alert(title: Text("Added succesfully"), dismissButton: .default(Text("Continue shopping")))
                        }
            }
            
            VStack {
                
                Divider()
                NavigationLink(destination: DuckyOne2RGBPuddingEditionDescription(), label: {
                    Text("Description")
                    .foregroundColor(Color.primary)
                    .padding(.vertical, 5.0)
                    .frame(width: 338, alignment: .leading)
                })
                Divider()
                NavigationLink(destination: DuckyOne2RGBPuddingEditionSpecs(), label: {

                Text("Specification")
                    .foregroundColor(Color.primary)
                    .padding(.vertical, 5.0)
                    .frame(width: 338, alignment: .leading)
                })
                Divider()
                
            }
            .frame(width: 340, alignment: .leading)
            .padding(.top)

            
        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DuckyOne2RGBPuddingEditionDescription: View {
    
    var body: some View {

        ScrollView{
        Text("В общем, это та же Ducky One 2 RGB, только производитель уже поставил на неё пудинги, а родные кейкапы продал на ОЛХ. В результате получили максимальное RGB и сразу из коробки.")
            .font(.title3)
            .padding()
            Spacer()

        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)
    }

        
        
}

struct DuckyOne2RGBPuddingEditionSpecs: View {
    
    var body: some View {

        ScrollView{
        VStack(alignment: .leading) {
            HStack {
                Text("Manufacturer: ")
                Spacer()
                Text("Ducky")
            }
            .padding(.vertical)
            HStack {
                Text("Model: ")
                Spacer()
                Text("One 2 RGB Pudding Edition")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Form-factor: ")
                Spacer()
                Text("Full size")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Switch type: ")
                Spacer()
                Text("Cherry MX")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Hotswap: ")
                Spacer()
                Text("Yes")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Backlight: ")
                Spacer()
                Text("RGB LED")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Number of keys: ")
                Spacer()
                Text("108")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Connector: ")
                Spacer()
                Text("USB Type-C")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Size: ")
                Spacer()
                Text("44x13.5x4 cm")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Weight: ")
                Spacer()
                Text("1.1 kg")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)

        }
        .padding()
            Spacer()

        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)

    }
}
struct DuckyOne2RGBPuddingEdition_Previews: PreviewProvider {
    static var previews: some View {
        DuckyOne2RGBPuddingEdition()
    }
}
