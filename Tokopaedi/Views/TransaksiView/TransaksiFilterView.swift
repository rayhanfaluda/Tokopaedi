//
//  TransaksiSegmentedControl.swift
//  Tokopaedi
//
//  Created by Rayhan Faluda on 21/04/22.
//

import SwiftUI

struct TransaksiFilterView: View {
    let transaksiFilter = ["Semua Status", "Semua Produk", "Semua Tanggal"]
    
    var body: some View {
        ScrollView(axes: .horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(transaksiFilter, id: \.self) { item in
                    TransaksiFilterButton(text: item)
                }
            }
        }
    }
}

struct TransaksiFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TransaksiFilterView()
    }
}
