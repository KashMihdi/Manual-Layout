//
//  SliderFactory.swift
//  Constraints
//
//  Created by Kasharin Mikhail on 19.05.2023.
//

import UIKit

protocol SliderFactoryProtocol {
    func createSlider() -> UISlider
}

final class SliderFactory: SliderFactoryProtocol {

    let tintColor: UIColor
    let startValue: Float
    
    init(tintColor: UIColor, startValue: Float) {
        self.tintColor = tintColor
        self.startValue = startValue
    }
    
    func createSlider() -> UISlider {
        let slider = UISlider()
        slider.minimumTrackTintColor = tintColor
        slider.maximumValue = 1.0
        slider.minimumValue = 0.0
        slider.value = startValue
        slider.translatesAutoresizingMaskIntoConstraints = false
        
        return slider
    }
}
