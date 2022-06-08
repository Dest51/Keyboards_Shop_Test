//
//  KeychronK2AluminumRGB.swift
//  Keyboards Shop
//
//  Created by Admin on 08.06.2022.
//

import SwiftUI

struct ImageSliderViewKeychronK2AluminumRGB: View {
    
    // 1
    private let images = ["KeychronK2AluminumRGB", "KeychronK2AluminumRGB", "KeychronK2AluminumRGB"]
    
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

struct KeychronK2AluminumRGB: View {
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
                    ImageSliderViewKeychronK2AluminumRGB()
                    .frame(height: 210)
                    .padding(.top)
                    
                
                Text("Клавиатура проводная Keychron K2 Aluminum RGB")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.primary)
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/)
                }
                Divider()
                
                HStack(){
                    
                    Text("3 150 ₴")
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
                NavigationLink(destination: KeychronK2AluminumRGBDescription(), label: {
                    Text("Description")
                    .foregroundColor(Color.primary)
                    .padding(.vertical, 5.0)
                    .frame(width: 338, alignment: .leading)
                })
                Divider()
                NavigationLink(destination: KeychronK2AluminumRGBSpecs(), label: {

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

struct KeychronK2AluminumRGBDescription: View {
    
    var body: some View {

        ScrollView{
        Text("""
            Максимальная версия K2, с алюминиевой рамой и RGB подсветкой.
             Беспроводная клавиатура, с полной поддержкой Mac OS и Windows, может работать до 10 дней на одном заряде и полностью заряжается всего за 3 часа.
             Обновлённая версия клавиатуры с Bluetooth 5.1, увеличенным наклоном и отдельным диодом подсветки Caps Lock.
             Ложкой дёгтя в этой клавиатуре будут стабилизаторы, которые производитель плохо смазывает при сборке, а это может сильно испортить впечатление от использования, но вы легко сможете это исправить или выберите опцию, если хотите, чтобы это исправили мы:)
            """)
            .font(.title3)
            .padding()
            Spacer()

        }
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)
    }

        
        
}

struct KeychronK2AluminumRGBSpecs: View {
    
    var body: some View {

        ScrollView{
        VStack(alignment: .leading) {
            HStack {
                Text("Manufacturer: ")
                Spacer()
                Text("Keychron")
            }
            .padding(.vertical)
            HStack {
                Text("Model: ")
                Spacer()
                Text("K2 Aluminum RGB")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Form-factor: ")
                Spacer()
                Text("TKL")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Switch type: ")
                Spacer()
                Text("Gateron")
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
                Text("RGB")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Number of keys: ")
                Spacer()
                Text("84")
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
                Text("32.5x13x4 cm")
            }
            .padding(.vertical)
            .overlay(Divider(), alignment: .top)
            HStack{
                Text("Weight: ")
                Spacer()
                Text("0,98 kg")
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
struct KeychronK2AluminumRGB_Previews: PreviewProvider {
    static var previews: some View {
        KeychronK2AluminumRGB()
    }
}
