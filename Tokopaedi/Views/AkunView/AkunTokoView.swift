//
//  AkunTokoView.swift
//  AkunTokoView
//
//  Created by Rayhan Martiza Faluda on 03/08/21.
//

import SwiftUI

struct AkunTokoView: View {
    var body: some View {
        VStack {
            Image("AkunTokoNoStore")
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 180)
            
            Text("Mulai dengan Tokopaedi!")
                .font(.headline)
                .padding(.bottom)
            
            Text("Punya toko sendiri tak cuma mimpi!\n Tokopaedi dukung wujudkan mimpimu\n dengan 3 keunggulan ini")
                .font(.subheadline)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Group {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.title3)
                        
                        Text("Buka Toko gratis tanpa syarat")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .padding(.bottom, 1)
                    
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.title3)
                        
                        Text("Jangkauan luas & kurir lengkap")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .padding(.bottom, 1)
                    
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                            .font(.title3)
                        
                        Text("Fitur ekslusif untuk bisnismu")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    .padding(.bottom, 20)
                }
            }
            
            Group {
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 3)
                            .foregroundColor(.green)
                            .frame(height: 48)
                            .padding(.horizontal, 20)
                        
                        Text("Buka Toko Gratis")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 6)
                
                Button {
                    
                } label: {
                    Text("Mau Tahu Caranya?")
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundColor(.green)
                }

            }
        }
    }
}

struct AkunTokoView_Previews: PreviewProvider {
    static var previews: some View {
        AkunTokoView()
    }
}
