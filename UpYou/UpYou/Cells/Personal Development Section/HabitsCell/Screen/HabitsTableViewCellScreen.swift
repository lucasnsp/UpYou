//
//  HabitsTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

class HabitsTableViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var habitsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var habitsOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsThreeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsFourImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsFiveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsFiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsSixTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsSixImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsSixLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsSevenTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsSevenImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsSevenLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsEightTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsEightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsEightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var habitsNineTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var habitsNineImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var habitsNineLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(viewBackground)
        viewBackground.addSubview(subImageView)
        viewBackground.addSubview(habitsTitleLabel)
        viewBackground.addSubview(habitsOneTitleLabel)
        viewBackground.addSubview(habitsOneImageView)
        viewBackground.addSubview(habitsOneLabel)
        viewBackground.addSubview(habitsTwoTitleLabel)
        viewBackground.addSubview(habitsTwoImageView)
        viewBackground.addSubview(habitsTwoLabel)
        viewBackground.addSubview(habitsThreeTitleLabel)
        viewBackground.addSubview(habitsThreeImageView)
        viewBackground.addSubview(habitsThreeLabel)
        viewBackground.addSubview(habitsFourTitleLabel)
        viewBackground.addSubview(habitsFourImageView)
        viewBackground.addSubview(habitsFourLabel)
        viewBackground.addSubview(habitsFiveTitleLabel)
        viewBackground.addSubview(habitsFiveImageView)
        viewBackground.addSubview(habitsFiveLabel)
        viewBackground.addSubview(habitsSixTitleLabel)
        viewBackground.addSubview(habitsSixImageView)
        viewBackground.addSubview(habitsSixLabel)
        viewBackground.addSubview(habitsSevenTitleLabel)
        viewBackground.addSubview(habitsSevenImageView)
        viewBackground.addSubview(habitsSevenLabel)
        viewBackground.addSubview(habitsEightTitleLabel)
        viewBackground.addSubview(habitsEightImageView)
        viewBackground.addSubview(habitsEightLabel)
        viewBackground.addSubview(habitsNineTitleLabel)
        viewBackground.addSubview(habitsNineImageView)
        viewBackground.addSubview(habitsNineLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBackground.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
            subImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor),
            
            habitsTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            habitsTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            habitsTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            habitsOneTitleLabel.topAnchor.constraint(equalTo: habitsTitleLabel.bottomAnchor, constant: 30),
            habitsOneTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsOneTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsOneImageView.topAnchor.constraint(equalTo: habitsOneTitleLabel.bottomAnchor, constant: 25),
            habitsOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsOneLabel.topAnchor.constraint(equalTo: habitsOneImageView.bottomAnchor, constant: 25),
            habitsOneLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsOneLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsTwoTitleLabel.topAnchor.constraint(equalTo: habitsOneLabel.bottomAnchor, constant: 30),
            habitsTwoTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsTwoTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsTwoImageView.topAnchor.constraint(equalTo: habitsTwoTitleLabel.bottomAnchor, constant: 25),
            habitsTwoImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsTwoImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsTwoImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsTwoLabel.topAnchor.constraint(equalTo: habitsTwoImageView.bottomAnchor, constant: 25),
            habitsTwoLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsTwoLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsThreeTitleLabel.topAnchor.constraint(equalTo: habitsTwoLabel.bottomAnchor, constant: 30),
            habitsThreeTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsThreeTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsThreeImageView.topAnchor.constraint(equalTo: habitsThreeTitleLabel.bottomAnchor, constant: 25),
            habitsThreeImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsThreeImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsThreeImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsThreeLabel.topAnchor.constraint(equalTo: habitsThreeImageView.bottomAnchor, constant: 25),
            habitsThreeLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsThreeLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsFourTitleLabel.topAnchor.constraint(equalTo: habitsThreeLabel.bottomAnchor, constant: 30),
            habitsFourTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsFourTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsFourImageView.topAnchor.constraint(equalTo: habitsFourTitleLabel.bottomAnchor, constant: 25),
            habitsFourImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsFourImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsFourImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsFourLabel.topAnchor.constraint(equalTo: habitsFourImageView.bottomAnchor, constant: 25),
            habitsFourLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsFourLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsFiveTitleLabel.topAnchor.constraint(equalTo: habitsFourLabel.bottomAnchor, constant: 30),
            habitsFiveTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsFiveTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsFiveImageView.topAnchor.constraint(equalTo: habitsFiveTitleLabel.bottomAnchor, constant: 25),
            habitsFiveImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsFiveImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsFiveImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsFiveLabel.topAnchor.constraint(equalTo: habitsFiveImageView.bottomAnchor, constant: 25),
            habitsFiveLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsFiveLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsSixTitleLabel.topAnchor.constraint(equalTo: habitsFiveLabel.bottomAnchor, constant: 30),
            habitsSixTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsSixTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsSixImageView.topAnchor.constraint(equalTo: habitsSixTitleLabel.bottomAnchor, constant: 25),
            habitsSixImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsSixImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsSixImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsSixLabel.topAnchor.constraint(equalTo: habitsSixImageView.bottomAnchor, constant: 25),
            habitsSixLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsSixLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsSevenTitleLabel.topAnchor.constraint(equalTo: habitsSixLabel.bottomAnchor, constant: 30),
            habitsSevenTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsSevenTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsSevenImageView.topAnchor.constraint(equalTo: habitsSevenTitleLabel.bottomAnchor, constant: 25),
            habitsSevenImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsSevenImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsSevenImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsSevenLabel.topAnchor.constraint(equalTo: habitsSevenImageView.bottomAnchor, constant: 25),
            habitsSevenLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsSevenLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsEightTitleLabel.topAnchor.constraint(equalTo: habitsSevenLabel.bottomAnchor, constant: 30),
            habitsEightTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsEightTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsEightImageView.topAnchor.constraint(equalTo: habitsEightTitleLabel.bottomAnchor, constant: 25),
            habitsEightImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsEightImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsEightImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsEightLabel.topAnchor.constraint(equalTo: habitsEightImageView.bottomAnchor, constant: 25),
            habitsEightLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsEightLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsNineTitleLabel.topAnchor.constraint(equalTo: habitsEightLabel.bottomAnchor, constant: 30),
            habitsNineTitleLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsNineTitleLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
            
            habitsNineImageView.topAnchor.constraint(equalTo: habitsNineTitleLabel.bottomAnchor, constant: 25),
            habitsNineImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            habitsNineImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            habitsNineImageView.heightAnchor.constraint(equalToConstant: 250),
            
            habitsNineLabel.topAnchor.constraint(equalTo: habitsNineImageView.bottomAnchor, constant: 25),
            habitsNineLabel.leadingAnchor.constraint(equalTo: habitsTitleLabel.leadingAnchor),
            habitsNineLabel.trailingAnchor.constraint(equalTo: habitsTitleLabel.trailingAnchor),
        ])
    }

}
