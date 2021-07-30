//
//  CategoryCollection.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 10/07/21.
//

import SwiftUI

struct CategoryCollection: View {
    static let colors: [String: Color] = ["purple": .purple, "black": .black, "red": .red, "blue": .blue, "green": .green, "yellow": .yellow, "orange": .orange]
    var category = [["checkmark.square.fill", "Official\n Store", "purple"],
                    ["square.grid.2x2.fill", "Lihat\n Semua", "green"],
                    ["hare.fill", "Perawatan\n Hewan", "orange"],
                    ["newspaper.fill", "Top-Up &\n Tagihan", "blue"],
                    ["candybarphone", "Handphone &\n Tablet", "green"],
                    ["cone.fill", "Fashion\n Wanita", "red"],
                    ["banknote", "Keuangan", "green"],
                    ["airplane", "Travel &\n Entertainment", "blue"],
                    ["cross.circle.fill", "Kesehatan", "green"],
                    ["bed.double.fill", "Rumah\n Tangga", "yellow"],
                    ["lightbulb.fill", "Elektronik", "green"]]
    
    var body: some View {
        ScrollView(axes: .horizontal, showsIndicators: false) {
            HStack {
                ForEach(category, id: \.self) { item in
                    CategoryCell(image: item[0], name: item[1])
                        .foregroundColor(Self.colors[item[2], default: .black])
                }
            }
        }
    }
}

struct CategoryCell: View {
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

struct CategoryCollection_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCollection()
    }
}
