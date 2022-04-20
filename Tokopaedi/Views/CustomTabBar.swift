//
//  CustomTabBar.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct CustomTabBar: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
            
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
                .tag(2)
            
            OfficialStoreView()
                .tabItem {
                    Image(systemName: "checkmark.square")
                    Text("Official Store")
                }
                .tag(3)
            
            WishlistView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Wishlist")
                }
                .tag(4)
            
            TransaksiView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Text("Transaksi")
                }
                .tag(5)
        }
        .accentColor(.green)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
