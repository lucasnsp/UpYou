//
//  EnvironmentTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class EnvironmentTableViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
        return image
    }()
    
    lazy var environmentTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var environmentOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var environmentTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var environmentThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentThreeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var environmentFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentFourImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var environmentFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentFiveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentFiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var environmentSixTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var environmentSixImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var environmentSixLabel: UILabel = {
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
        viewBackground.addSubview(environmentTitleLabel)
        viewBackground.addSubview(environmentOneTitleLabel)
        viewBackground.addSubview(environmentOneImageView)
        viewBackground.addSubview(environmentOneLabel)
        viewBackground.addSubview(environmentTwoTitleLabel)
        viewBackground.addSubview(environmentTwoImageView)
        viewBackground.addSubview(environmentTwoLabel)
        viewBackground.addSubview(environmentThreeTitleLabel)
        viewBackground.addSubview(environmentThreeImageView)
        viewBackground.addSubview(environmentThreeLabel)
        viewBackground.addSubview(environmentFourTitleLabel)
        viewBackground.addSubview(environmentFourImageView)
        viewBackground.addSubview(environmentFourLabel)
        viewBackground.addSubview(environmentFiveTitleLabel)
        viewBackground.addSubview(environmentFiveImageView)
        viewBackground.addSubview(environmentFiveLabel)
        viewBackground.addSubview(environmentSixTitleLabel)
        viewBackground.addSubview(environmentSixImageView)
        viewBackground.addSubview(environmentSixLabel)
        
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
            
            environmentTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            environmentTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            environmentTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            environmentOneTitleLabel.topAnchor.constraint(equalTo: environmentTitleLabel.bottomAnchor, constant: 30),
            environmentOneTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentOneTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentOneImageView.topAnchor.constraint(equalTo: environmentOneTitleLabel.bottomAnchor, constant: 25),
            environmentOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            environmentOneLabel.topAnchor.constraint(equalTo: environmentOneImageView.bottomAnchor, constant: 25),
            environmentOneLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentOneLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentTwoTitleLabel.topAnchor.constraint(equalTo: environmentOneLabel.bottomAnchor, constant: 30),
            environmentTwoTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentTwoTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentTwoImageView.topAnchor.constraint(equalTo: environmentTwoTitleLabel.bottomAnchor, constant: 25),
            environmentTwoImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentTwoImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentTwoImageView.heightAnchor.constraint(equalToConstant: 250),

            environmentTwoLabel.topAnchor.constraint(equalTo: environmentTwoImageView.bottomAnchor, constant: 25),
            environmentTwoLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentTwoLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentThreeTitleLabel.topAnchor.constraint(equalTo: environmentTwoLabel.bottomAnchor, constant: 30),
            environmentThreeTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentThreeTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentThreeImageView.topAnchor.constraint(equalTo: environmentThreeTitleLabel.bottomAnchor, constant: 25),
            environmentThreeImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentThreeImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentThreeImageView.heightAnchor.constraint(equalToConstant: 250),
            
            environmentThreeLabel.topAnchor.constraint(equalTo: environmentThreeImageView.bottomAnchor, constant: 25),
            environmentThreeLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentThreeLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentFourTitleLabel.topAnchor.constraint(equalTo: environmentThreeLabel.bottomAnchor, constant: 30),
            environmentFourTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentFourTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentFourImageView.topAnchor.constraint(equalTo: environmentFourTitleLabel.bottomAnchor, constant: 25),
            environmentFourImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentFourImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentFourImageView.heightAnchor.constraint(equalToConstant: 250),
            
            environmentFourLabel.topAnchor.constraint(equalTo: environmentFourImageView.bottomAnchor, constant: 25),
            environmentFourLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentFourLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentFiveTitleLabel.topAnchor.constraint(equalTo: environmentFourLabel.bottomAnchor, constant: 30),
            environmentFiveTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentFiveTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentFiveImageView.topAnchor.constraint(equalTo: environmentFiveTitleLabel.bottomAnchor, constant: 25),
            environmentFiveImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentFiveImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentFiveImageView.heightAnchor.constraint(equalToConstant: 250),
            
            environmentFiveLabel.topAnchor.constraint(equalTo: environmentFiveImageView.bottomAnchor, constant: 25),
            environmentFiveLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentFiveLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentSixTitleLabel.topAnchor.constraint(equalTo: environmentFiveLabel.bottomAnchor, constant: 30),
            environmentSixTitleLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentSixTitleLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
            
            environmentSixImageView.topAnchor.constraint(equalTo: environmentSixTitleLabel.bottomAnchor, constant: 25),
            environmentSixImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            environmentSixImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            environmentSixImageView.heightAnchor.constraint(equalToConstant: 250),
            
            environmentSixLabel.topAnchor.constraint(equalTo: environmentSixImageView.bottomAnchor, constant: 25),
            environmentSixLabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            environmentSixLabel.trailingAnchor.constraint(equalTo: environmentTitleLabel.trailingAnchor),
        ])
    }
}
