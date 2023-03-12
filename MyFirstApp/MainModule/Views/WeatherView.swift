//
//  WeatherView.swift
//  MyFirstApp
//
//  Created by Роман Савин on 24.02.2023.
//

import UIKit

class WeatherView: UIView {
    
    private let weatherIconImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sun")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let weatherStatusLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherDiscriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.font = .robotoMedium14()
        label.textColor = .specialGray
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        addShadowOnView()
        self.addSubview(weatherIconImageView)
        self.addSubview(weatherStatusLabel)
        self.addSubview(weatherDiscriptionLabel)
        
        
    }
}

extension WeatherView {
    private func setConstrains() {
        NSLayoutConstraint.activate([
            weatherIconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherIconImageView.trailingAnchor.constraint(equalTo: trailingAnchor,
                                                           constant: -10),
            weatherIconImageView.widthAnchor.constraint(equalToConstant: 60),
            weatherIconImageView.heightAnchor.constraint(equalToConstant: 60),
            
            weatherStatusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherStatusLabel.leadingAnchor.constraint(equalTo: leadingAnchor,
                                                        constant: 10),
            weatherStatusLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor,
                                                         constant: -10),
            weatherStatusLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weatherDiscriptionLabel.topAnchor.constraint(equalTo: weatherStatusLabel.bottomAnchor,
                                                         constant: 0),
            weatherDiscriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor,
                                                             constant: 10),
            weatherDiscriptionLabel.trailingAnchor.constraint(equalTo: weatherIconImageView.leadingAnchor,
                                                              constant: -10),
            weatherDiscriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor,
                                                            constant: -5)
        ])
    }
}
