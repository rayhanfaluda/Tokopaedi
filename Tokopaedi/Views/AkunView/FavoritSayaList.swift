//
//  FavoritSayaList.swift
//  FavoritSayaList
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct FavoritSayaList: View {
    var body: some View {
        VStack {
            HStack {
                Text("Favorit Saya")
                    .font(.body)
                    .fontWeight(.medium)
                
                Spacer()
            }
            
            Group {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Topik Favorit")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Atur topik favorit anda")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Terakhir Dilihat")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Cek Produk terakhir yang dilihat")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Wishlist")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Lihat Produk yang sudah Anda wishlist")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Toko Favorit")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Lihat Toko yang sudah Anda favoritkan")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Langganan")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Atur & bayar tagihan dalam satu tempat")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                
                Divider()
            }
        }
    }
}

struct FavoritSayaList_Previews: PreviewProvider {
    static var previews: some View {
        FavoritSayaList()
    }
}
