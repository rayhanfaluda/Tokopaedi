//
//  SearchBar.swift
//  Tokopaedi
//
//  Created by Rayhan Martiza Faluda on 09/07/21.
//

import SwiftUI

struct SearchBar: View {
    var textFieldPlaceholder: String
    var navBarItems = ["envelope", "bell", "cart", "line.3.horizontal"]
    
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField(textFieldPlaceholder, text: $text)
                .keyboardType(.webSearch)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                 
                        if isEditing {
                            Button {
                                withAnimation {
                                    self.text = ""
                                }
                            } label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .onTapGesture {
                    withAnimation {
                        self.isEditing = true
                    }
                }
            
            if isEditing {
                Button {
                    withAnimation {
                        self.isEditing = false
                        self.text = ""
                        hideKeyboard()
                    }
                } label: {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .animation(.default)
            } else {
                HStack {
                    ForEach(navBarItems, id: \.self) { item in
                        NavBarItems(image: item)
                    }
                }
            }
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(textFieldPlaceholder: "Cari di Tokopaedi", text: .constant(""))
            .background(Color.green)
    }
}
