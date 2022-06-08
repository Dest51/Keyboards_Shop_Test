//
//  LeopoldFC900RWhiteandGrayPD.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct ImageSliderViewLeopoldFC900RWhiteandGrayPD: View {
    
    // 1
    private let images = ["LeopoldFC900RWhiteandGrayPD", "LeopoldFC900RWhiteandGrayPD", "LeopoldFC900RWhiteandGrayPD"]
    
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

struct LeopoldFC900RWhiteandGrayPD: View {
    
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
                    ImageSliderViewLeopoldFC900RWhiteandGrayPD()
                    .frame(height: 210)
                    .padding(.top)
                    
                
                Text("Клавиатура проводная Leopold FC900R White and Gray PD")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.primary)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/)
                }
                Divider()
                
                HStack(){
                    
                    Text("4 380 ₴")
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
                NavigationLink(destination: LeopoldFC900RWhiteandGrayPDDescription(), label: {
                    Text("Description")
                    .foregroundColor(Color.primary)
                    .padding(.vertical, 5.0)
                    .frame(width: 338, alignment: .leading)
                })
                Divider()
                NavigationLink(destination: LeopoldFC900RWhiteandGrayPDSpecs(), label: {

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

struct LeopoldFC900RWhiteandGrayPDDescription: View {
    
    var body: some View {

        ScrollView{
        Text("""
            Когда-то эту расцветку будут называть "классической" и "той самой", а клавиатуры будут отрывать с руками по цене хорошо укомплектованной однушки в центре Киева. Успейте сегодня, чтобы не бить себя по лбу и не рассказывать внукам о такой упущенной возможности.
            """)
            .font(.title3)
            .padding()
            Spacer()

        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)
    }

        
        
}

struct LeopoldFC900RWhiteandGrayPDSpecs: View {
    
    var body: some View {

        ScrollView{
        VStack(alignment: .leading) {
            HStack {
                Text("Manufacturer: ")
                Spacer()
                Text("Leopold")
            }
            .padding(.vertical)
            HStack {
                Text("Model: ")
                Spacer()
                Text("FC900R White and Gray PD")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Form-factor: ")
                Spacer()
                Text("Full-size")
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
                Text("No")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Backlight: ")
                Spacer()
                Text("No")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Number of keys: ")
                Spacer()
                Text("104")
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
                Text("44x14x4 cm")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Weight: ")
                Spacer()
                Text("1,2 kg")
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
struct LeopoldFC900RWhiteandGrayPD_Previews: PreviewProvider {
    static var previews: some View {
        LeopoldFC900RWhiteandGrayPD()
    }
}
