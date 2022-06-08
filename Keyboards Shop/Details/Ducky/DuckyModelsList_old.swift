//
//  DuckyModelsList.swift
//  Keyboards Shop
//
//  Created by Admin on 04.04.2022.
//

import SwiftUI


//struct HiddenNavigationBar: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//        .navigationBarTitle("", displayMode: .inline)
//        .navigationBarHidden(true)
//    }
//}
//
//extension View {
//    func hiddenNavigationBarStyle() -> some View {
//        modifier( HiddenNavigationBar() )
//    }
//}

struct DuckyModelsList_old: View {
    

    
    var body: some View {

           
//        Text("Ducky keyboards:")
//                .font(.system(size: 25))
//        NavigationView{
        
            ScrollView(.vertical, showsIndicators: false) {

                VStack(spacing: 15){
                    
                        HStack(spacing: 15){
                            
                            NavigationLink(destination: DuckyOne3Matcha(), label: {
                                Image("DuckyOne3Matcha").resizable().frame(width: 120, height: 70)
                                    .cornerRadius(3)
                                    .shadow(color: .black, radius: 1, x: 1, y: 1)

                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    Text("Ducky One 3 Matcha")
                                        .fontWeight(.bold)
                                        .foregroundColor(.primary)
                                    
                                    Text("3 990 UAH")
                                        .foregroundColor(.gray)
                                    
                                    //Button("More...", action: {})
                                }
                                Spacer(minLength: 0)
                            })
                        }
                        .padding(.bottom)
                        .overlay(Divider(), alignment: .bottom)

                    NavigationLink(destination: DuckyOne3Matcha(), label: {
                    ProductCardDucky(product: productList[1])
                    })
                        .overlay(Divider(), alignment: .bottom)

//                    HStack(spacing: 15){
//
//                        NavigationLink(destination: DuckyModelsList(), label: {
//
//                        Image("DuckyOne2PhantomBlack").resizable().frame(width: 120, height: 70)
//                            .cornerRadius(3)
//                            .shadow(color: .black, radius: 1, x: 1, y: 1)
//
//                        VStack(alignment: .leading, spacing: 12) {
//
//                            Text("Ducky One 2 Phantom Black")
//                                .fontWeight(.bold)
//                                .foregroundColor(.primary)
//
//                            Text("3 300 UAH")
//                                .foregroundColor(.gray)
//                        }
//
//                        Spacer(minLength: 0)
//                        })
//                    }
//                    .padding(.bottom)
//                    .overlay(Divider(), alignment: .bottom)
                    
                    ProductCardDucky(product: productList[2])

//                    HStack(spacing: 15){
//
//                        NavigationLink(destination: DuckyModelsList(), label: {
//
//                        Image("DuckyOne2RGBPuddingEdition").resizable().frame(width: 120, height: 70)
//                            .cornerRadius(3)
//                            .shadow(color: .black, radius: 1, x: 1, y: 1)
//
//                            VStack(alignment: .leading, spacing: 12) {
//
//                            Text("Ducky One 2 RGB Pudding Edition")
//                                .fontWeight(.bold)
//                                .foregroundColor(.primary)
//
//                            Text("5 090 UAH")
//                                .foregroundColor(.gray)
//                        }
//
//                        Spacer(minLength: 0)
//                        })
//                    }
//                    .padding(.bottom)
//                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne3TKLDaybreak").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 3 TKL Daybreak")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 790 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne3TKLFuji").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 3 TKL Fuji")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 790 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    

                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne2TKLRGBWhite").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 2 TKL RGB White")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("4 480 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne2TKLTuxedo").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 2 TKL Tuxedo")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 340 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne2TKLHorizon").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 2 TKL Horizon")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 310 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne2TKLSkyline").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 2 TKL Skyline")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 340 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: DuckyModelsList(), label: {
                            
                        Image("DuckyOne2MiniRGB").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Ducky One 2 Mini RGB")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("3 380 UAH")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    
                    //.hiddenNavigationBarStyle()
//                                    .navigationTitle("")
//                                    .navigationBarHidden(true)

            }
                .padding()
                //.navigationTitle("")
                //.navigationBarHidden(true)
                //.hiddenNavigationBarStyle()
            }
            .background(Color.defaultBackground)
            .edgesIgnoringSafeArea(.bottom)

            //.navigationTitle("")
            //.navigationBarHidden(true)
            //.hiddenNavigationBarStyle()
        
//    }
        
    }
}

struct DuckyModelsList_old_Previews: PreviewProvider {
    static var previews: some View {
        DuckyModelsList_old()
    }
}
