//
//  GreenSlider.swift
//  MyFirstApp
//
//  Created by Роман Савин on 05.03.2023.
//

import UIKit

class GreenSlider: UISlider {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        maximumTrackTintColor = .specialLightBrown
        minimumTrackTintColor = .specialGreen
        translatesAutoresizingMaskIntoConstraints = false
    }
}
