//
//  ShippedToLoc.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 12/07/21.
//

import SwiftUI

struct ShippedToLoc: View {
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: "mappin.circle")
                    .font(.footnote.bold())
                
                Text("Dikirim ke ")
                    .font(.footnote)
                    .fontWeight(.regular)
                    .padding(.leading, -4)
                
                Text("Rumah")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.leading, -6)
                
                Image(systemName: "chevron.down")
                    .font(.caption2)
                    .padding(.leading, -2)
            }
        }
        .foregroundColor(.white)
    }
}

struct ShippedToLoc_Previews: PreviewProvider {
    static var previews: some View {
        ShippedToLoc()
    }
}
