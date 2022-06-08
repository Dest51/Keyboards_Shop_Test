//
//  ContentView.swift
//  Keyboards Shop
//
//  Created by Admin on 04.04.2022.
//


import SwiftUI
import Firebase


extension UIColor {
  convenience init(light: UIColor, dark: UIColor) {
    self.init { traitCollection in
      switch traitCollection.userInterfaceStyle {
      case .light, .unspecified:
        return light
      case .dark:
        return dark
      @unknown default:
        return light
      }
    }
  }
}

extension Color {
  init(light: Color, dark: Color) {
    self.init(UIColor(light: UIColor(light), dark: UIColor(dark)))
  }
}
extension Color {
  static let interfaceColor = Color("InterfaceColor")
}

extension Color {
    static let defaultBackground = Color(light: .white, dark: .interfaceColor)
}

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}


struct ContentView: View {
    
    var body: some View {
        
        Home()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentView()
            .environmentObject(SessionServiceImpl())
        }
    }
}

struct Home : View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    
    @State var index = 0
    @State var show = false
    
    var body: some View{
        
        ZStack{
            
            
            // Menu...
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Image("avatar")
                    
                    Text("Hey")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text("\(sessionService.userDetails?.firstName ?? "N/A")")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        
                        self.index = 0
                        
                        // animating Views...
                        
                        // Each Time Tab Is Clicked Menu Will be Closed...
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("catalouge")
                                .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)

                            
                            Text("Catalouge")
                            .foregroundColor(self.index == 0 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    .padding(.top,25)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("cart")
                                .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)

                            
                            Text("Cart")
                            .foregroundColor(self.index == 1 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 2
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("fav")
                                .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)

                            
                            Text("Favourites")
                            .foregroundColor(self.index == 2 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 3
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("orders")
                                .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)

                            
                            Text("Your Orders")
                            .foregroundColor(self.index == 3 ? Color("Color1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color("Color1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical,30)
                    
                    Button(action: {
                        // TODO: handle logout action here
                        sessionService.logout()
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image("out")
                                .foregroundColor(Color.white)

                            
                            Text("Sign Out")
                            .foregroundColor(Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,25)
                .padding(.horizontal,20)
                
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            // MainView...
            
            VStack(spacing: 0){
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        // close Button...
                        
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.primary.opacity(0.4))
                    }
                    
                    // Changing Name Based On Index...
                    
                    Text(self.index == 0 ? "Home" : (self.index == 1 ? "Cart" : (self.index == 2 ? "Favourites" : "Orders")))
                        .font(.title)
                        .foregroundColor(Color.primary.opacity(0.6))
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader{_ in
                    
                    VStack{
                        
                        // Changing Views Based On Index...
                        
                        if self.index == 0{
                            
                            MainPage()
                        }
                        else if self.index == 1{
                            
                            Cart()
                        }
                        else if self.index == 2{
                            
                            Favourites()
                        }
                        else{
                            
                            Orders()
                        }
                    }
                }
            }
            .background(Color.defaultBackground)
            //Applying Corner Radius...
            .cornerRadius(self.show ? 30 : 0)
            // Shrinking And Moving View Right Side When Menu Button Is Clicked...
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            // Rotating Slighlty...
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

// Mainpage View...

struct MainPage : View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    var ref = Database.database().reference()

    var body: some View{


        
       
        NavigationView{
        ScrollView{
        VStack{
                    ScrollView{
                        GeometryReader { geometry in
                         ImageCarouselView(numberOfImages: 3) {
                            Image("1")
                              .resizable()
                              .scaledToFill()
                              .frame(width: geometry.size.width, height:geometry.size.height)
                              .clipped()
                             Image("2")
                             .resizable()
                              .scaledToFill()
                             .frame(width: geometry.size.width, height:         geometry.size.height)
                             .clipped()
                            Image("3")
                             .resizable()
                             .scaledToFill()
                             .frame(width: geometry.size.width, height: geometry.size.height)
                             .clipped()
                            }
                        }.frame(height: 190, alignment: .center)
                        
                    }
                    .frame(width: .infinity, height: 200)
                    
            
        Text("Оберіть виробника:")
                .font(.system(size: 25))
            
            //Text("First name: \(sessionService.userDetails?.firstName ?? "N/A")")
            //Text("Last name: \(sessionService.userDetails?.lastName ?? "N/A")")
            //Text("Occupation: \(sessionService.userDetails?.occupation ?? "N/A")")

        
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15){
                    
                        HStack(spacing: 15){
                            
                            NavigationLink(destination: DuckyModelsList(), label: {
                                Image("Ducky").resizable().frame(width: 120, height: 70)
                                    .cornerRadius(3)
                                    .shadow(color: .black, radius: 1, x: 1, y: 1)

                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    Text("Ducky")
                                        .fontWeight(.bold)
                                        .foregroundColor(.primary)
                                    
                                    Text("High quality at a reasonable price")
                                        .foregroundColor(.gray)
                                    
                                    //Button("More...", action: {})
                                }
                                Spacer(minLength: 0)
                            })
                        }
                        .padding(.vertical)
                        .overlay(Divider(), alignment: .top)
                        .overlay(Divider(), alignment: .bottom)
                    

                    HStack(spacing: 15){
                        
                        NavigationLink(destination: KeychronModelsList(), label: {
                            
                        Image("Keychron").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Keychron")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("The youngest but most ambitious brand")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: LeopoldModelsList(), label: {
                            
                        Image("Leopold").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Leopold")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Synonymous with quality and industry standard")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: VortexModelsList(), label: {
                            
                        Image("Vortex").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Vortex")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("One of the most unique keyboards")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: NizModelsList(), label: {
                            
                        Image("Niz").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Niz")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("if you are looking for a serious tool, you have already found it")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    HStack(spacing: 15){
                        
                        NavigationLink(destination: MistelModelsList(), label: {
                            
                        Image("Mistel").resizable().frame(width: 120, height: 70)
                            .cornerRadius(3)
                            .shadow(color: .black, radius: 1, x: 1, y: 1)

                        VStack(alignment: .leading, spacing: 12) {
                            
                            Text("Mistel")
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            
                            Text("Interesting split keyboards")
                                .foregroundColor(.gray)
                        }
                        
                        Spacer(minLength: 0)
                        })
                    }
                    .padding(.bottom)
                    .overlay(Divider(), alignment: .bottom)
                    
                    
                    
                }
                .padding([.leading, .bottom, .trailing])
            }
        
    }
        }
        .hiddenNavigationBarStyle()
        .background(Color.defaultBackground)
        .edgesIgnoringSafeArea(.bottom)

        }


    }
}

// All Other Views...

struct Cart : View {
    
    var body: some View{
        
        VStack{
            
            Text("Cart")
        }
    }
}

struct Orders : View {
    
    var body: some View{
        
        VStack{
            
            Text("Your Orders")
        }
    }
}

struct Favourites : View {
    
    var body: some View{
        
        VStack{
            
            Text("Favourites")
        }
    }
}
