//
//  SegmentedControlView.swift
//  SegmentedControlView
//
//  Created by Rayhan Martiza Faluda on 16/07/21.
//

import SwiftUI

struct Segment: Identifiable {
    var id: Int
    var segmentName: String
}

struct SegmentedControlView: View {
    @Binding var selected : Int
    var segments: [Segment]

    var body: some View {
        HStack {
            ForEach(segments) { segment in
                GeometryReader { geometry in
                    VStack {
                        Button(action: {
                            self.selected = segment.id
                        })
                        {
                            Text(segment.segmentName)
                                .padding(.horizontal, 5)
                                .padding(.vertical, 0)
                                .font(.headline)
                        }
                        .foregroundColor(self.selected == segment.id ? .green : .gray)
                        
                        Rectangle()
                            .fill()
                            .foregroundColor(self.selected == segment.id ? .green : .clear)
                            .frame(width: geometry.size.width, height: 2)
                            .fixedSize()
//                            .offset(x: geometry.size.width, y: geometry.size.height)
                    }
                    .animation(.easeInOut(duration: 0.33))
                }
            }
        }
//        .padding()
        .animation(.easeInOut(duration: 0.33))
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(selected: .constant(0), segments: [Segment(id: 0, segmentName: "Akun Pembeli"), Segment(id: 1, segmentName: "Akun Toko")])
    }
}
