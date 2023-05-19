//
//  StackViewFactory.swift
//  Constraints
//
//  Created by Kasharin Mikhail on 19.05.2023.
//

import UIKit

protocol StackViewFactoryProtocol {
    func createStackView() -> UIStackView
}

final class StackViewFactory: StackViewFactoryProtocol {

    let axis: NSLayoutConstraint.Axis 
    let spacing: CGFloat

    init(axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.axis = axis
        self.spacing = spacing
    }
    
    func createStackView() -> UIStackView {
        
        let stackView = UIStackView()
        
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }
}

