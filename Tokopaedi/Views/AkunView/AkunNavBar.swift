//
//  AkunNavBar.swift
//  AkunNavBar
//
//  Created by Rayhan Martiza Faluda on 16/07/21.
//

import SwiftUI

struct AkunNavBar: View {
    @State private var selectedSegment: Int = 0
    
    var navBarItems = ["gearshape.fill", "envelope.fill", "bell.fill"]
    var segmentedLabels = ["Akun Pembeli", "Akun Toko"]
    var segments = [Segment(id: 0, segmentName: "Akun Pembeli"), Segment(id: 1, segmentName: "Akun Toko")]
    
    var body: some View {
        VStack {
            HStack {
                Text("Akun Saya")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                ForEach(navBarItems, id: \.self) { item in
                    NavBarItems(image: item)
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 4)
                }
            }
            
            SegmentedControlView(selected: $selectedSegment, segments: segments)
//            SegmentedPicker(selectedSegment: $selectedSegment, labels: segmentedLabels)
//                .frame(height: 60)
        }
    }
}

struct AkunNavBar_Previews: PreviewProvider {
    static var previews: some View {
        AkunNavBar()
    }
}
