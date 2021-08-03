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
                       showsIndicators: true,
                       offsetChanged: { cgpoint in
                print(cgpoint)
            }
            ) {
                if selectedSegment == 0 {
                    AkunPembeliView()
                        .padding(.horizontal)
                } else {
                    AkunTokoView()
                        .padding(.top, 64)
                        .padding(.horizontal)
                }
            }
            .animation(.easeInOut(duration: 0.33))
            .padding(.top, 92)
            
            VStack {
                AkunNavBar(selectedSegment: $selectedSegment)
                    .padding(.top, 10)
                    .padding(.horizontal)
                
                Spacer()
            }
//            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct AkunView_Previews: PreviewProvider {
    static var previews: some View {
        AkunView()
    }
}
