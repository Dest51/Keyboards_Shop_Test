//
//  Keyboards_ShopApp.swift
//  Keyboards Shop
//
//  Created by Admin on 04.04.2022.
//

import SwiftUI
import Firebase

@main
struct Keyboards_ShopApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    @StateObject var sessionService = SessionServiceImpl()
    
    
    var body: some Scene {
        WindowGroup {
            
                switch sessionService.state {
                case .loggedIn:
                    ContentView()
                        .environmentObject(sessionService)
                case .loggedOut:
                    NavigationView {
                    LoginView()
                            .background(Color.defaultBackground)
                            .edgesIgnoringSafeArea(.vertical)
                            .navigationBarBackButtonHidden(true)


                    }

                    
                }

        }
    }
}
