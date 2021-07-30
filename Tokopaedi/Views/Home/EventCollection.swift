//
//  EventCollection.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 14/07/21.
//

import SwiftUI

struct EventCollection: View {
    static let colors: [String: Color] = ["purple": .purple, "black": .black, "red": .red, "blue": .blue, "green": .green, "yellow": .yellow, "orange": .orange]
    var events = [["heart.fill", "Bangga\n Lokal", "red"],
                  ["shippingbox.fill", "Bazar Hari\n Ini", "red"],
                  ["play.fill", "Live\n Shopping", "green"],
                  ["cart.circle.fill", "Belanja\n Harian", "yellow"],
                  ["circle.fill", "Panen\n Telur", "blue"],
                  ["hand.raised.fill", "Bayar di\n Tempat", "green"]]
    
    var body: some View {
        ScrollView(axes: .horizontal, showsIndicators: false) {
            HStack {
                ForEach(events, id: \.self) { event in
                    EventCell(image: event[0], name: event[1])
                        .foregroundColor(Self.colors[event[2], default: .black])
                }
            }
        }
    }
}

struct EventCell: View {
    var image: String
    var name: String
    
    var body: some View {
        VStack {
            Image(systemName: image)
                .font(.title)
                .padding(.bottom, 8)
            
            Text(name)
                .font(.footnote)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .foregroundColor(.init(.displayP3, red: 0, green: 0, blue: 0, opacity: 0.75))
        }
        .padding(.horizontal)
    }
}

struct EventCollection_Previews: PreviewProvider {
    static var previews: some View {
        EventCollection()
    }
}
