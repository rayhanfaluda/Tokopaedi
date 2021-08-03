//
//  TokopaediCareList.swift
//  TokopaediCareList
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct TokopaediCareList: View {
    var body: some View {
        VStack {
            HStack {
                Text("Tokopaedi Care")
                    .font(.body)
                    .fontWeight(.medium)
                
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Pusat Bantuan")
                        .font(.subheadline)
                        .padding(.bottom, 1)
                    
                    Text("Lihat solusi terbaik dari Tokopaedi Care")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 8)
            .padding(.bottom)
            
            Rectangle()
                .foregroundColor(Color(.init(gray: 0.9, alpha: 1.0)))
                .padding(.horizontal, -16)
        }
    }
}

struct TokopaediCareList_Previews: PreviewProvider {
    static var previews: some View {
        TokopaediCareList()
    }
}
