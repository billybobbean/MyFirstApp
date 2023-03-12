//
//  StartWorkoutViewController.swift
//  MyFirstApp
//
//  Created by Роман Савин on 09.03.2023.
//

import UIKit

class StartWorkoutViewController: UIViewController {
    
    private let startWorkoutLabel = UILabel(text: "START WORKOUT", font: .robotoMedium24(), textColor: .specialGray)
    
    private lazy var closeButton = CloseButton(type: .system)
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sportsman")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let detailsLabel = UILabel(text: "Details")
    
    private let detailsView = DetailsView()
    
    private lazy var finishButton = GreenButton(text: "FINISH")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(startWorkoutLabel)
        view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        view.addSubview(imageView)
        view.addSubview(detailsLabel)
        view.addSubview(detailsView)
        view.addSubview(finishButton)
        finishButton.addTarget(self, action: #selector(finishButtonTap), for: .touchUpInside)
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc private func finishButtonTap() {
        print("finish")
    }
}

extension StartWorkoutViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            startWorkoutLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            startWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: startWorkoutLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 33),
            closeButton.widthAnchor.constraint(equalToConstant: 33),
            
            imageView.topAnchor.constraint(equalTo: startWorkoutLabel.bottomAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 250),
            
            detailsLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            detailsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            detailsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailsView.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 2),
            detailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            detailsView.heightAnchor.constraint(equalToConstant: 230),
            
            finishButton.topAnchor.constraint(equalTo: detailsView.bottomAnchor, constant: 20),
            finishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            finishButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            finishButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
