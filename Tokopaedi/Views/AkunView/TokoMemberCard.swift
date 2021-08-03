//
//  TokoMemberCard.swift
//  TokoMemberCard
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct TokoMemberCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .foregroundColor(.white)
                .shadow(radius: 2)
                .frame(height: 100)
            
            HStack {
                VStack {
                    Image(systemName: "creditcard")
                        .font(.title)
                        .foregroundColor(.green)
                        .padding(.bottom, 1)
                    
                    Text("TokoMember")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("0 Member")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 1, height: 24)
                    .padding(.horizontal, 20)
                
                VStack {
                    Image(systemName: "doc.text.magnifyingglass")
                        .font(.title)
                        .foregroundColor(.green)
                        .padding(.bottom, 0)
                    
                    Text("TopQuest")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("8 Tantangan")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 1, height: 24)
                    .padding(.horizontal, 20)
                
                VStack {
                    Image(systemName: "ticket")
                        .font(.title)
                        .foregroundColor(.green)
                        .padding(.bottom, 1)
                    
                    Text("Kupon Saya")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("13 Kupon")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

struct TokoMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        TokoMemberCard()
    }
}
