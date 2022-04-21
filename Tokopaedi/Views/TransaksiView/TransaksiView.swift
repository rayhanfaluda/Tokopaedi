//
//  TransaksiView.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 18/04/22.
//

import SwiftUI

struct TransaksiView: View {
    let transaksi = [["bag.fill", "Belanja", "6 Apr 2022", "Selesai", "purple", "Masker King mask KN95 5 Ply Premium Medis", "2 barang", "Rp 40.300", "Beri Ulasan"],
                     ["bag.fill", "Belanja", "28 Mar 2022", "Selesai", "black", "MIJOBS MiBand 6 CS Flat Hole Silicon Strap", "1 barang", "Rp 50.000", "Beli Lagi"],
                     ["bag.fill", "Belanja", "26 Mar 2022", "Selesai", "red", "iPhone 9 / SE 2020 - COPPER Tempered Glass", "1 barang", "Rp 60.000", "Beli Lagi"],
                     ["iphone", "Pasca Bayar", "24 Mar 2022", "Berhasil", "blue", "Telkomsel - Halo", "081122334455", "Rp 200.000", "Beli Lagi"],
                     ["bolt.fill", "Listrik PLN", "11 Feb 2022", "Berhasil", "yellow", "Token Listrik Rp 100.000", "1234567890", "Rp 102.500", "Beli Lagi"],
                     ["bag.fill", "Belanja", "7 Mar 2022", "Selesai", "green", "MILS Keyboard Case iPad 6 7 Mini 4 5 Air 3 4", "1 barang", "Rp 377.000", "Beli Lagi"],
                     ["bag.fill", "Belanja", "11 Jan 2022", "Selesai", "orange", "ACMIC F10PRO 10000mAh AiCharge Slim Digital", "1 barang", "Rp 219.000", "Beli Lagi"]]
    
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                SearchBar(textFieldPlaceholder: "Cari Transaksi", text: $searchText)
                    .tint(.black)
                
                TransaksiFilterView()
                    .frame(height: 44)
                
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView(axes: .vertical, showsIndicators: true) {
                LazyVStack {
                    MenungguPembayaranView()
                        .padding(.bottom)
                    
                    ForEach(transaksi, id: \.self) { item in
                        TransaksiCard(transaksiIcon: item[0],
                                      transaksiType: item[1],
                                      transaksiDate: item[2],
                                      transaksiStatus: item[3],
                                      productImage: item[4],
                                      productName: item[5],
                                      productQty: item[6],
                                      transaksiPrice: item[7],
                                      transaksiPrompt: item[8])
                        .padding(.bottom, 8)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top, 96)
        }
    }
}

struct TransaksiView_Previews: PreviewProvider {
    static var previews: some View {
        TransaksiView()
    }
}
