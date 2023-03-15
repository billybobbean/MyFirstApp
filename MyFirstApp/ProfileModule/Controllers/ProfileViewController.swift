//
//  ProfileViewController.swift
//  MyFirstApp
//
//  Created by Роман Савин on 09.03.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileLabel = UILabel(text: "PROFILE", font: .robotoMedium24(), textColor: .specialGray)
    
    private let userPhotoImageView = UserPhotoImage(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
    
    private let userProfileView = UserProfileView()
    
    private let heightLabel = UILabel(text: "Height: 170", font: .robotoMedium16(), textColor: .specialGray)
    private let weightLabel = UILabel(text: "Weight: 90", font: .robotoMedium16(), textColor: .specialGray)
    private var stackView = UIStackView()
    
    private lazy var editingButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .none
        button.setTitle("Editing", for: .normal)
        button.tintColor = .specialGreen
        button.titleLabel?.font = .robotoMedium16()
        button.setImage(UIImage(named: "profileEditing"), for: .normal)
        button.imageEdgeInsets = .init(top: 0, left: 79, bottom: 0, right: 0)
        button.titleEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 20)
        button.addTarget(self, action: #selector(editingButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLayoutSubviews() {
        userPhotoImageView.layer.cornerRadius = userPhotoImageView.frame.width / 2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        
        view.addSubview(profileLabel)
        view.addSubview(userProfileView)
        view.addSubview(userPhotoImageView)
        
        stackView = UIStackView(arrangedSubviews: [heightLabel, weightLabel], axis: .horizontal, spacing: 10)
        view.addSubview(stackView)
        view.addSubview(editingButton)
        
    }
    
    @objc private func editingButtonTap() {
        print("edit")
    }
    
}

//MARK: - Extensions

extension ProfileViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileLabel.heightAnchor.constraint(equalToConstant: 26),
            
            userProfileView.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 70),
            userProfileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userProfileView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            userProfileView.heightAnchor.constraint(equalToConstant: 110),
            
            userPhotoImageView.centerXAnchor.constraint(equalTo: userProfileView.centerXAnchor),
            userPhotoImageView.centerYAnchor.constraint(equalTo: userProfileView.topAnchor),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 100),
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            stackView.topAnchor.constraint(equalTo: userProfileView.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            editingButton.topAnchor.constraint(equalTo: userProfileView.bottomAnchor, constant: 10),
            editingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editingButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
