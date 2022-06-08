//
//  ImageSliderView.swift
//  Custom Menu
//
//  Created by Admin on 03.04.2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI


//struct ImageSliderView: View {
//    
//    // 1
//    private let images = ["DuckyOne3Matcha", "2", "3"]
//    
//    var body: some View {
//        // 2
//        TabView {
//            ForEach(images, id: \.self) { item in
//                 //3
//                 Image(item)
//                    .resizable()
//                    .scaledToFill()
//            }
//        }
//        .tabViewStyle(PageTabViewStyle())
//    }
//}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
            .previewLayout(.fixed(width: 400, height: 200))

    }
}
