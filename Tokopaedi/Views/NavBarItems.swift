//
//  NavBarItems.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct NavBarItems: View {
    var image: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: image)
//                    .foregroundColor(.white)
        }
    }
}

struct NavBarItems_Previews: PreviewProvider {
    static var previews: some View {
        NavBarItems(image: "heart.fill")
            .background(Color.green)
    }
}
