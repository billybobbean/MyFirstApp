//
//  UserProfileView.swift
//  MyFirstApp
//
//  Created by Роман Савин on 10.03.2023.
//

import UIKit

class UserProfileView: UIView {
    
    private let userNameLabel = UILabel(text: "YOUR NAME", font: .robotoBold24(), textColor: .white)
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(userNameLabel)
    }
}

extension UserProfileView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            userNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            userNameLabel.heightAnchor.constraint(equalToConstant: 26),
            userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
