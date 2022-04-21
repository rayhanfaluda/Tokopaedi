//
//  HomeView.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    @State private var scrollPosition: CGPoint = CGPoint(x: 0.0, y: 0.0)
    @State private var index: Int = 0
    
    var colors: [Color] = [.purple, .red, .blue]
    
    var body: some View {
        ZStack {
            ScrollView(axes: .vertical,
                       showsIndicators: false,
                       offsetChanged: { cgpoint in
                withAnimation {
                    scrollPosition = cgpoint
                }
                print(scrollPosition)
            }
            ) {
                ZStack {
                    VStack {
                        CurvedTopBg()
                            .foregroundColor(.green)
                            .frame(height: 500)
                            .offset(y: -350)
                        
                        Spacer()
                    }
                    
                    VStack(alignment: .leading) {
                        ShippedToLoc()
                        
                        TopCard()
                        
                        CategoryCollection()
                            .padding(.horizontal, -16)
                        
                        GeometryReader { geometry in
                            ImageCarouselView(numberOfImages: colors.count) {
                                HStack {
                                    ForEach(colors, id: \.self) { color in
                                        RoundedRectangle(cornerRadius: 10)
                                            .foregroundColor(color)
                                            .frame(width: geometry.size.width, height: geometry.size.height)
                                    }
                                }
                            }
                        }
                        .frame(height: 150, alignment: .center)
                        .padding(.vertical)
                        .padding(.trailing)
                        
                        EventCollection()
                            .padding(.horizontal, -16)
                            .padding(.bottom)
                        
                        TodaysSpecial()
                    }
                    .padding()
                    .padding(.top, UIScreen.main.bounds.height * 0.086)
                }
            }
            .edgesIgnoringSafeArea(.top)
            
            VStack {
                SearchBar(textFieldPlaceholder: "Cari di Tokopaedi", text: $searchText)
                    .padding(.horizontal)
                    .padding(.top, 6)
                    .padding(.bottom)
                    .foregroundColor(scrollPosition.y <= -15.0 ? .black : .white)
                    .background(scrollPosition.y <= -15.0 ? .white : .clear)
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
