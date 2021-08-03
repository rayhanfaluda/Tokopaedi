//
//  DanaDiTokopaediCard.swift
//  DanaDiTokopaediCard
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct DanaDiTokopaediCard: View {
    let gradientColors = StyleColors.cardGradient
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
//                .fill(gradientColors)
                .foregroundColor(.white)
                .shadow(radius: 2)
                .frame(height: 200)
            
            VStack {
                HStack {
                    Text("Dana di Tokopaedi")
                        .font(.headline)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Atur")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.green)
                }
                .padding(.bottom, 32)
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Image(systemName: "moon.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                            .padding(.bottom, 2)
                            
                        Text("Rp10.000.000")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.bottom, 2)
                        
                        Text("Points 100.000")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "dollarsign.square")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                            .padding(.bottom, 2)
                        
                        Text("Rp 1.000.000")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(.bottom, 2)
                        
                        Text("Saldo")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct DanaDiTokopaediCard_Previews: PreviewProvider {
    static var previews: some View {
        DanaDiTokopaediCard()
    }
}
