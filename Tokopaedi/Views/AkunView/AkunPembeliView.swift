//
//  AkunPembeliView.swift
//  AkunPembeliView
//
//  Created by Rayhan Martiza Faluda on 03/08/21.
//

import SwiftUI

struct AkunPembeliView: View {
    var body: some View {
        VStack {
            ProfileRow()
                .padding(.top, 4)
                .padding(.bottom, 8)
            
            TokoMemberCard()
                .padding(.bottom, 8)
            
            DanaDiTokopaediCard()
                .padding(.bottom, 32)
            
            DaftarTransaksiList()
                .padding(.bottom, 24)
            
            FavoritSayaList()
                .padding(.bottom, 24)
            
            TokopaediCareList()
        }
    }
}

struct AkunPembeliView_Previews: PreviewProvider {
    static var previews: some View {
        AkunPembeliView()
    }
}
