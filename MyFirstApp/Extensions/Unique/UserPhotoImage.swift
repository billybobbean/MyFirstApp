//
//  UserPhotoImage.swift
//  MyFirstApp
//
//  Created by Роман Савин on 10.03.2023.
//

import UIKit

class UserPhotoImage: UIImageView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = #colorLiteral(red: 0.8044065833, green: 0.8044064641, blue: 0.8044064641, alpha: 1)
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 5
        translatesAutoresizingMaskIntoConstraints = false
    }
}
