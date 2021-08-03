//
//  TodaysSpecial.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 14/07/21.
//

import SwiftUI

struct TodaysSpecial: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Spesial di Tokopaedi hari ini")
                .fontWeight(.bold)
            
            HStack {
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.red)
                        .frame(height: 100)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                        .frame(height: 100)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.pink)
                        .frame(height: 100)
                    
                    if #available(iOS 15.0, *) {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.brown)
                            .frame(height: 100)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
    }
}

struct TodaysSpecial_Previews: PreviewProvider {
    static var previews: some View {
        TodaysSpecial()
    }
}
