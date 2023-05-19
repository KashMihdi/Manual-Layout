//
//  LabelFactory.swift
//  Constraints
//
//  Created by Kasharin Mikhail on 19.05.2023.
//
import UIKit

protocol LabelFactoryProtocol {
    func createLabel() -> UILabel
}

final class LabelFactory: LabelFactoryProtocol {

    let title: String
    let font: UIFont

    init(title: String, font: UIFont) {
        self.title = title
        self.font = font
    }
    
    func createLabel() -> UILabel {
        
        let label = UILabel()
        
        label.text = title
        label.textAlignment = .left
        label.font = font
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }
}
