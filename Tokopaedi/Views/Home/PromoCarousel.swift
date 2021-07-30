//
//  PromoCarousel.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 14/07/21.
//

import SwiftUI

struct PromoCarousel: View {
    @State private var index: Int = 0
    
    var colors: [Color] = [.purple, .black, .red, .blue, .green, .yellow, .orange]
    
    var body: some View {
        HStack {
            TabView(selection: $index) {
                ForEach(colors, id: \.self) { color in
                    RoundedRectangle(cornerRadius: 10, style: .circular)
                        .foregroundColor(color)
                        .padding(.horizontal)
                        .tag(index)
                }
            }
            .frame(height: 230)
            .padding(.top, 25)
            .padding(.horizontal, -16)
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeOut)
        }
    }
}

struct ImageCarouselView<Content: View>: View {
    private var numberOfImages: Int
    private var content: Content

    @State private var currentIndex: Int = 0
    
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    init(numberOfImages: Int, @ViewBuilder content: () -> Content) {
        self.numberOfImages = numberOfImages
        self.content = content()
    }

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                self.content
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            .offset(x: CGFloat(self.currentIndex) * -geometry.size.width, y: 0)
            .animation(.spring())
            .onReceive(self.timer) { _ in
                
                self.currentIndex = (self.currentIndex + 1) % 3
            }
        }
    }
}

struct PromoCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PromoCarousel()
    }
}
