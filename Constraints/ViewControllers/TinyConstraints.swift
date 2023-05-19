//
//  TinyConstraints.swift
//  Constraints
//
//  Created by Kasharin Mikhail on 19.05.2023.
//

import UIKit
import TinyConstraints

final class TinyConstraints: UIViewController {
    
    // MARK: - Private Properties
    
    // Main View
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Static Label RGB
    private lazy var stackConstantLabel: UIStackView = {
        let stackView = StackViewFactory(axis: .vertical, spacing: 16)
        return stackView.createStackView()
    }()
    private lazy var constantRedLabel: UILabel = {
        let label =  LabelFactory(title: "red:", font: .boldSystemFont(ofSize: 16))
        return label.createLabel()
    }()
    private lazy var constantGreenLabel: UILabel = {
        let label =  LabelFactory(title: "green:", font: .boldSystemFont(ofSize: 16))
        return label.createLabel()
    }()
    private lazy var constantBlueLabel: UILabel = {
        let label =  LabelFactory(title: "blue:", font: .boldSystemFont(ofSize: 16))
        return label.createLabel()
    }()
    
    // Changeable Labels RGB
    private lazy var stackLabel: UIStackView = {
        let stackView = StackViewFactory(axis: .vertical, spacing: 16)
        return stackView.createStackView()
    }()
    private lazy var redLabel: UILabel = {
        let label =  LabelFactory(title: "0.20", font: .systemFont(ofSize: 16))
        return label.createLabel()
    }()
    private lazy var greenLabel: UILabel = {
        let label =  LabelFactory(title: "0.40", font: .systemFont(ofSize: 16))
        return label.createLabel()
    }()
    private lazy var blueLabel: UILabel = {
        let label =  LabelFactory(title: "0.60", font: .systemFont(ofSize: 16))
        return label.createLabel()
    }()
    
    // Sliders RGB
    private lazy var stackSlider: UIStackView = {
        let stackView = StackViewFactory(axis: .vertical, spacing: 6)
        return stackView.createStackView()
    }()
    private lazy var redSlider: UISlider = {
        let slider = SliderFactory(
            tintColor: .red,
            startValue: 0.2)
        return slider.createSlider()
    }()
    private lazy var greenSlider: UISlider = {
        let slider = SliderFactory(
            tintColor: .green,
            startValue: 0.4)
        return slider.createSlider()
    }()
    private lazy var blueSlider: UISlider = {
        let slider = SliderFactory(
            tintColor: .blue,
            startValue: 0.6)
        return slider.createSlider()
    }()
    
    // Text Field RGB
    private lazy var stackTF: UIStackView = {
        let stackView = StackViewFactory(axis: .vertical, spacing: 15)
        return stackView.createStackView()
    }()
    private lazy var redTF: UITextField = {
        let textField = TextFieldFactory(value: "0.20", placeholder: "input")
        return textField.createTextField()
    }()
    private lazy var greenTF: UITextField = {
        let textField = TextFieldFactory(value: "0.40", placeholder: "input")
        return textField.createTextField()
    }()
    private lazy var blueTF: UITextField = {
        let textField = TextFieldFactory(value: "0.60", placeholder: "input")
        return textField.createTextField()
    }()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupArrangedSubview(for: stackConstantLabel, with: constantRedLabel, constantGreenLabel, constantBlueLabel)
        setupArrangedSubview(for: stackLabel, with: redLabel, greenLabel, blueLabel)
        setupArrangedSubview(for: stackSlider, with: redSlider, greenSlider, blueSlider)
        setupArrangedSubview(for: stackTF, with: redTF, greenTF, blueTF)
        setupSubviews(mainView, stackConstantLabel, stackLabel, stackSlider, stackTF)
        setConstraints()
    }
    // MARK: Setup Views
    private func setupArrangedSubview(for stackView: UIStackView, with subviews: UIView...) {
        subviews.forEach { subview in
            stackView.addArrangedSubview(subview)
        }
    }
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    // MARK: Set Constraints
    private func setConstraints() {
        mainView.topToSuperview(offset: 20, usingSafeArea: true)
        mainView.leadingToSuperview(offset: 16)
        mainView.trailingToSuperview(offset: 16)
        mainView.heightToSuperview(multiplier: 1/3)
        
        stackConstantLabel.topToBottom(of: mainView, offset: 40)
        stackConstantLabel.leadingToSuperview(offset: 16)
        
        stackLabel.topToBottom(of: mainView, offset: 40)
        stackLabel.leadingToTrailing(of: stackConstantLabel, offset: 16)
        
        stackSlider.topToBottom(of: mainView, offset: 34)
        stackSlider.leadingToTrailing(of: stackLabel, offset: 16)
        
        stackTF.topToBottom(of: mainView, offset: 37)
        stackTF.leadingToTrailing(of: stackSlider, offset: 16)
        stackTF.trailingToSuperview(offset: 16)
    }
}

