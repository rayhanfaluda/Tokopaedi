//
//  DaftarTransaksiList.swift
//  DaftarTransaksiList
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct DaftarTransaksiList: View {
    var body: some View {
        VStack {
            HStack {
                Text("Daftar Transaksi")
                    .font(.headline)
                
                Spacer()
            }
            .padding(.bottom)
            
            Group {
                HStack {
                    VStack {
                        ZStack {
                            Image(systemName: "banknote.fill")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                            
                            Image(systemName: "clock.fill")
                                .font(.body)
                                .foregroundColor(.green)
                                .offset(x: 24, y: 14)
                        }
                        .padding(.bottom, 8)
                        
                        Text("Menunggu\n Pembayaran")
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        ZStack {
                            Image(systemName: "shippingbox.fill")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                            
                            Image(systemName: "clock.arrow.2.circlepath")
                                .font(.body)
                                .foregroundColor(.green)
                                .offset(x: 20, y: 10)
                        }
                        .padding(.bottom, 4)
                        
                        Text("Transaksi\n Berlangsung")
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "bag.fill")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                            .offset(y: -16)
                        
                        Text("Semua Transaksi")
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            
            Rectangle()
                .foregroundColor(Color(.init(gray: 0.9, alpha: 1.0)))
                .padding(.trailing, -16)
            
            Group {
                HStack {
                    VStack(alignment: .leading) {
                        Text("E-tiket & E-voucher Aktif")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Cek tiket dan voucher siap pakai")
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
                        Text("Ulasan")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Berikan penilaian dan ulas produk")
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
                        Text("Komplain Sebagai Pembeli")
                            .font(.subheadline)
                            .padding(.bottom, 1)
                        
                        Text("Lihat status komplain di sini")
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

struct DaftarTransaksiList_Previews: PreviewProvider {
    static var previews: some View {
        DaftarTransaksiList()
    }
}
