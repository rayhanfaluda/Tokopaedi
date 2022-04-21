//
//  TransaksiFilterButton.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 21/04/22.
//

import SwiftUI

struct TransaksiFilterButton: View {
    var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(.gray, lineWidth: 0.5)
                )
            
            HStack {
                Text(text)
                    .font(.subheadline)
                    .foregroundColor(Color(UIColor.darkGray))
                
                Image(systemName: "chevron.down")
                    .font(.footnote)
                    .foregroundColor(Color(UIColor.lightGray))
                    .padding(.leading, 4)
            }
            .padding(.horizontal)
        }
    }
}

struct TransaksiFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        TransaksiFilterButton(text: "Semua Status")
            .frame(width: 160, height: 40)
    }
}
