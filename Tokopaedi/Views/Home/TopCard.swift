//
//  TopCard.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct TopCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(radius: 4)
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "moon.circle.fill")
                            .foregroundColor(.purple)
                        
                        Button {
                            
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Rp10.000.000")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                Text("Top-up CASH")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.green)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.square.fill")
                            .foregroundColor(.orange)
                        
                        Button {
                            
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Rp138.850")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                Text("(13.885 Points)")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "shippingbox.fill")
                            .foregroundColor(.green)
                        
                        Button {
                            
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Bebas Ongkir")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                Text("6x Lagi")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "star.circle.fill")
                            .foregroundColor(.yellow)
                        
                        Button {
                            
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Gold")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                
                                Text("32 Kupon")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .padding(.trailing, 40)
            }
            .padding()
        }
    }
}

struct TopCard_Previews: PreviewProvider {
    static var previews: some View {
        TopCard()
            .frame(height: 120)
    }
}
