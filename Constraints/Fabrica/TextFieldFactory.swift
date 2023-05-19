//
//  TextFieldFactory.swift
//  Constraints
//
//  Created by Kasharin Mikhail on 19.05.2023.
//

import Foundation
import UIKit

protocol TextFieldFactoryProtocol {
    func createTextField() -> UITextField
}

final class TextFieldFactory: TextFieldFactoryProtocol {

    let value: String
    let placeholder: String
    
    init(value: String, placeholder: String) {
        self.value = value
        self.placeholder = placeholder
    }
    
    func createTextField() -> UITextField {
        let textField = UITextField()
        textField.text = value
        textField.placeholder = placeholder
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }
}
