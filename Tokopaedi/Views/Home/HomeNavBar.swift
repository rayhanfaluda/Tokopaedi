//
//  HomeNavBar.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct HomeNavBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        SearchBar(textFieldPlaceholder: "Cari di Tokopaedi", text: $searchText)
            .padding()
            .padding(.top)
            .padding(.top, UIScreen.main.bounds.height * 0.024)
    }
}

struct HomeNavBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavBar()
            .background(Color.green)
    }
}
