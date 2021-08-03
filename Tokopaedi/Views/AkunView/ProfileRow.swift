//
//  ProfileRow.swift
//  ProfileRow
//
//  Created by Rayhan Martiza Faluda on 02/08/21.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading) {
                Text("Rayhan Faluda")
                    .font(.headline)
                    .padding(.bottom, 1)
                
                HStack {
                    Image(systemName: "star.circle.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Member Gold")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                        .padding(.leading, -2)
                    
                    Image(systemName: "chevron.right")
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .padding(.leading, -2)
                }
            }
            
            Spacer()
        }
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow()
    }
}
