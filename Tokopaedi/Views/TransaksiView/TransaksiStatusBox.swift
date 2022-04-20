//
//  TransaksiStatusBox.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 20/04/22.
//

import SwiftUI

struct TransaksiStatusBox: View {
    @Binding var statusText: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(.init(red: 0, green: 255, blue: 0, opacity: 0.2))
                .frame(width: 60, height: 30)
            
            Text(statusText)
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.green)
        }
    }
}

struct TransaksiStatusBox_Previews: PreviewProvider {
    static var previews: some View {
        TransaksiStatusBox(statusText: .constant("Selesai"))
    }
}
