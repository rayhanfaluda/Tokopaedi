//
//  AkunView.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct AkunView: View {
    @State private var selectedSegment: Int = 0
    
    var navBarItems = ["gearshape.fill", "envelope.fill", "bell.fill"]
    var segmentedLabels = ["Akun Pembeli", "Akun Toko"]
    var segments = [Segment(id: 0, segmentName: "Akun Pembeli"), Segment(id: 1, segmentName: "Akun Toko")]
    var colors: [Color] = [.purple, .red, .blue]
    
    var body: some View {
        ZStack {
            ScrollView(axes: .vertical,
                       showsIndicators: false,
                       offsetChanged: { cgpoint in
                print(cgpoint)
            }
            ) {
                Text("Hello World")
            }
            .padding(.top, 120)
            
            VStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .shadow(radius: 2)
                        .frame(height: 120)
                    
                    VStack {
                        AkunNavBar()
                        
//                        SegmentedControlView(selected: $selectedSegment, segments: segments)
                        
//                        SegmentedPicker(selectedSegment: $selectedSegment, labels: segmentedLabels)
//                            .frame(height: 60)
                    }
                    .padding(.horizontal)
                    .padding(.top, UIScreen.main.bounds.height * 0.108)
                    .padding(.bottom)
                    .background(Color.white)
                    .frame(height: 120)
                }
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct AkunView_Previews: PreviewProvider {
    static var previews: some View {
        AkunView()
    }
}
