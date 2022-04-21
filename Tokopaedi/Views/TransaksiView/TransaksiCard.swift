//
//  TransaksiCard.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 18/04/22.
//

import SwiftUI

struct TransaksiCard: View {
    static let colors: [String: Color] = ["purple": .purple, "black": .black, "red": .red, "blue": .blue, "green": .green, "yellow": .yellow, "orange": .orange]
    
    var transaksiIcon: String
    var transaksiType: String
    var transaksiDate: String
    var transaksiStatus: String
    var productImage: String
    var productName: String
    var productQty: String
    var transaksiPrice: String
    var transaksiPrompt: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(radius: 2)
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: transaksiIcon)
                        .font(.title2)
                        .foregroundColor(.green)
                    
                    VStack(alignment: .leading) {
                        Text(transaksiType)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text(transaksiDate)
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(.init(red: 0, green: 255, blue: 0, opacity: 0.2))
                            .frame(width: 60, height: 28)
                        
                        Text(transaksiStatus)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.systemGreen))
                    }
                    
                    Button {
                        print("Three dots button tapped")
                    } label: {
                        Image(systemName: "slider.vertical.3")
                    }
                    .tint(Color(UIColor.darkGray))
                }
                
                Divider()
                    .padding(.vertical, 8)
                
                HStack {
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Self.colors[productImage, default: .black])
                        .frame(width: 40, height: 40)
                    
                    VStack(alignment: .leading) {
                        Text(productName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                        
                        Text(productQty)
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.bottom, 8)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Total Belanja:")
                            .font(.caption)
                            .fontWeight(.light)
                        
                        Text(transaksiPrice)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Button {
                        print("Beri Ulasan Button Tapped!")
                    } label: {
                        Text(transaksiPrompt)
                            .font(.footnote)
                            .fontWeight(.bold)
                    }
                    .tint(.green)
                    .buttonStyle(.borderedProminent)

                }
            }
            .padding()
        }
    }
}

struct TransaksiCard_Previews: PreviewProvider {
    static var previews: some View {
        TransaksiCard(transaksiIcon: "bag.fill",
                      transaksiType: "Belanja",
                      transaksiDate: "6 Apr 2022",
                      transaksiStatus: "Selesai",
                      productImage: "red",
                      productName: "Masker King mask KN95 5 Ply Premium Medis",
                      productQty: "2 barang",
                      transaksiPrice: "Rp 40.300",
                      transaksiPrompt: "Beri Ulasan")
        .frame(height: 120)
    }
}
