//
//  DetailsView.swift
//  MyFirstApp
//
//  Created by Роман Савин on 09.03.2023.
//

import UIKit

class DetailsView: UIView {
    
    private let exerciseNameLabel = UILabel(text: "Biceps", font: .robotoMedium22(), textColor: .specialGray)
    
    private let setsLabel = UILabel(text: "Sets", font: .robotoMedium18(), textColor: .specialGray)
    
    private let numberOfSetsLabel = UILabel(text: "1/4", font: .robotoMedium22(), textColor: .specialGray)
    
    private let setsLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let repsLabel = UILabel(text: "Reps", font: .robotoMedium18(), textColor: .specialGray)
    
    private let numberOfRepsLabel = UILabel(text: "20", font: .robotoMedium22(), textColor: .specialGray)
    
    private let repsLineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var editingButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .none
        button.setTitle("Editing", for: .normal)
        button.tintColor = .specialGray
        button.alpha = 0.5
        button.titleLabel?.font = .robotoMedium18()
        button.setImage(UIImage(named: "editing"), for: .normal)
        button.addTarget(self, action: #selector(editingButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var nextSetButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialDarkYellow
        button.layer.cornerRadius = 10
        button.setTitle("NEXT SET", for: .normal)
        button.titleLabel?.font = .robotoBold16()
        button.tintColor = .specialDarkGreen
        button.addTarget(self, action: #selector(nextSetButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .specialBrown
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(exerciseNameLabel)
        addSubview(setsLabel)
        addSubview(numberOfSetsLabel)
        addSubview(setsLineView)
        addSubview(repsLabel)
        addSubview(numberOfRepsLabel)
        addSubview(repsLineView)
        addSubview(editingButton)
        addSubview(nextSetButton)
        
    }
    
    @objc private func editingButtonTap() {
        print("edit")
    }
    @objc private func nextSetButtonTap() {
        print("next set")
    }
}

extension DetailsView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            exerciseNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            exerciseNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            exerciseNameLabel.heightAnchor.constraint(equalToConstant: 24),
            
            setsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            setsLabel.topAnchor.constraint(equalTo: exerciseNameLabel.bottomAnchor, constant: 10),
            
            numberOfSetsLabel.topAnchor.constraint(equalTo: exerciseNameLabel.bottomAnchor, constant: 15),
            numberOfSetsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            setsLineView.topAnchor.constraint(equalTo: numberOfSetsLabel.bottomAnchor, constant: 2),
            setsLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            setsLineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            setsLineView.heightAnchor.constraint(equalToConstant: 1),
            
            repsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            repsLabel.topAnchor.constraint(equalTo: setsLineView.bottomAnchor, constant: 15),
            
            numberOfRepsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            numberOfRepsLabel.topAnchor.constraint(equalTo: setsLineView.bottomAnchor, constant: 15),
            
            repsLineView.topAnchor.constraint(equalTo: numberOfRepsLabel.bottomAnchor, constant: 2),
            repsLineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            repsLineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            repsLineView.heightAnchor.constraint(equalToConstant: 1),
            
            editingButton.topAnchor.constraint(equalTo: repsLineView.bottomAnchor, constant: 10),
            editingButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            editingButton.heightAnchor.constraint(equalToConstant: 22),
            editingButton.widthAnchor.constraint(equalToConstant: 100),
            
            nextSetButton.topAnchor.constraint(equalTo: editingButton.bottomAnchor, constant: 15),
            nextSetButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nextSetButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nextSetButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
