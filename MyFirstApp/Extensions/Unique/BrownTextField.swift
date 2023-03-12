//
//  BrownTextField.swift
//  MyFirstApp
//
//  Created by Роман Савин on 05.03.2023.
//

import UIKit

class BrownTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .specialBrown
        borderStyle = .none
        layer.cornerRadius = 10
        textColor = .specialGray
        font = .robotoBold20()
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        leftViewMode = .always
        clearButtonMode = .always
        returnKeyType = .done
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension BrownTextField: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // метод, который отвечает за кнопку Done
        textField.resignFirstResponder() // уйти с переднего плана
        
    }
}
