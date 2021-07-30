//
//  CurvedTopBg.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct CurvedTopBg: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addQuadCurve(to: CGPoint(x: rect.size.width/2, y: rect.size.height), control: CGPoint(x: -350, y: rect.size.height))
            path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width + 350, y: rect.size.height))
        }
    }
}

struct CurvedTopBg_Previews: PreviewProvider {
    static var previews: some View {
        CurvedTopBg()
            .foregroundColor(.green)
            .frame(width: UIScreen.main.bounds.width, height: 100)
    }
}
