//
//  MenungguPembayaranView.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 21/04/22.
//

import SwiftUI

struct MenungguPembayaranView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(.gray, lineWidth: 0.5)
                )
            
            HStack {
                Image(systemName: "banknote.fill")
                    .font(.title2)
                    .foregroundColor(.green)
                
                Text("Menunggu Pembayaran")
                    .font(.footnote)
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.forward")
                    .font(.footnote)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
    }
}

struct MenungguPembayaranView_Previews: PreviewProvider {
    static var previews: some View {
        MenungguPembayaranView()
            .frame(height: 40)
    }
}
