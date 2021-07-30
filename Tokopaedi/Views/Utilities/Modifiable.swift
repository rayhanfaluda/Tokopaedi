//
//  Modifiable.swift
//  Modifiable
//
//  Created by Rayhan Martiza Faluda on 16/07/21.
//

import Foundation

@propertyWrapper class Modifiable<Value> {
    private(set) var value: Value
    
    init(wrappedValue: Value) {
        self.value = wrappedValue
    }
    
    var wrappedValue: Value {
        get { value }
        set { value = newValue }
    }
}
