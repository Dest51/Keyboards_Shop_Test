//
//  ImageCarouselView.swift
//  Custom Menu
//
//  Created by Admin on 03.04.2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

// 1
import SwiftUI
import Combine

// 2
struct ImageCarouselView<Content: View>: View {
    // 3
    private var numberOfImages: Int
    private var content: Content

    // 4
    @State private var currentIndex: Int = 0
    
    // 5
    private let timer = Timer.publish(every: 6, on: .main, in: .common).autoconnect()

    // 6
    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }


    var body: some View {
        // 1
        GeometryReader { geometry in
            
            ZStack(alignment: .bottom) {
            // 2
            HStack(spacing: 0) {
                // 3
                self.content
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading) // 4
            .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0) // 5
            .animation(.spring()) // 6
            .onReceive(self.timer) { _ in
                // 7
                self.currentIndex = (self.currentIndex + 1) % 3
            }
            
            HStack(spacing: 3) {
                     // 3
                     ForEach(0..<self.numberOfImages, id: \.self) { index in
                          // 4
                         Circle()
                             .frame(width: index == self.currentIndex ? 10 : 8,
                                    height: index == self.currentIndex ? 10 : 8)
                             .foregroundColor(index == self.currentIndex ? Color.blue : .white)
                             .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                             .padding(.bottom, 8)
                             .animation(.spring())
                     }
                 }
            }
        }
    }
}


struct ImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        
        // 7
        // 8
               GeometryReader { geometry in
                   ImageCarouselView(numberOfImages: 3) {
                       Image("1")
                           .resizable()
                           .scaledToFill()
                           .frame(width: geometry.size.width, height: geometry.size.height)
                           .clipped()
                       Image("2")
                           .resizable()
                           .scaledToFill()
                           .frame(width: geometry.size.width, height: geometry.size.height)
                           .clipped()
                       Image("3")
                           .resizable()
                           .scaledToFill()
                           .frame(width: geometry.size.width, height: geometry.size.height)
                           .clipped()
                   }
               }.frame(width: UIScreen.main.bounds.width, height: 200, alignment: .center)
    }
}
