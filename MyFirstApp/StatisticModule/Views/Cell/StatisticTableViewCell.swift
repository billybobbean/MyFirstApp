//
//  ExercisesTableViewCell.swift
//  MyFirstApp
//
//  Created by Роман Савин on 27.02.2023.
//

import UIKit

class StatisticTableViewCell: UITableViewCell {
    
    static let idTableViewCell = "idTableViewCell"
    
    private let backgroundCell: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Biceps"
        label.textColor = .specialGray
        label.font = .robotoMedium24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let beforeLabel = UILabel(text: "Before: 18")
    
    private let nowLabel = UILabel(text: "Now: 20")
    
    private let differenceLabel: UILabel = {
        let label = UILabel()
        label.text = "+2"
        label.textAlignment = .right
        label.textColor = .specialGreen
        label.font = .robotoBold24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLine
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none
        
        addSubview(backgroundCell)
        addSubview(nameLabel)
        addSubview(differenceLabel)
        
        stackView = UIStackView(
            arrangedSubviews: [beforeLabel, nowLabel],
            axis: .horizontal,
            spacing: 10)
        
        addSubview(stackView)
        addSubview(lineView)
    }
    
    public func configure(differenceWorkout: DifferenceWorkout) {
        nameLabel.text = differenceWorkout.name
        beforeLabel.text = "Before: \(differenceWorkout.firstReps)"
        nowLabel.text = "Now: \(differenceWorkout.lastReps)"
        
        let difference = differenceWorkout.lastReps - differenceWorkout.firstReps
        differenceLabel.text = "\(difference)"
        
        switch difference {
        case ..<0: differenceLabel.textColor = .specialGreen
        case 1...: differenceLabel.textColor = .specialYellow
        default:
            differenceLabel.textColor = .specialGray
        }
    }
}

extension StatisticTableViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            differenceLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            differenceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            differenceLabel.widthAnchor.constraint(equalToConstant: 50),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: differenceLabel.leadingAnchor, constant: -20),
            
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            lineView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
