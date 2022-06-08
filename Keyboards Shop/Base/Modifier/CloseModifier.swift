//
//  CloseModifier.swift
//  Keyboards Shop
//
//  Created by Admin on 13.04.2022.
//

import SwiftUI

struct CloseModifier: ViewModifier {

    @Environment(\.presentationMode) var presentationMode
    
    func body(content: Content) -> some View {
        content
            .toolbar {
                Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            })
            }
    }
}

extension View{
    
    func applyClose() -> some View {
        self.modifier(CloseModifier())
    }
    
}

//struct CloseModifier_Previews: PreviewProvider {
//    static var previews: some View {
//        CloseModifier()
//    }
//}
