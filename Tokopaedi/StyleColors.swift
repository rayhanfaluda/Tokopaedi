//
//  StyleColors.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 14/07/21.
//

import SwiftUI
import Foundation

class StyleColors {
    static var background: Color {
        return Color("F3FBFF")
    }
    
    static var babyBlue: Color {
        return Color("89CFF0")
    }
    
    static var tBabyBlue: Color {
        return Color("4AB2E2")
    }
    
    static var gradientBG : LinearGradient {
        LinearGradient(gradient: Gradient(colors: [StyleColors.babyBlue, StyleColors.background]), startPoint: .top, endPoint: .bottom)
    }
    
    static var cardGradient : LinearGradient {
        LinearGradient(gradient: Gradient(colors: [StyleColors.tBabyBlue, StyleColors.babyBlue]), startPoint: .leading, endPoint: .trailing)
    }
    
    static var moodGradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [StyleColors.tBabyBlue, StyleColors.babyBlue]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
