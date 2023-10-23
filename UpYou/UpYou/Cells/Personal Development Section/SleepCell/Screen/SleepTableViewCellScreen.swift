//
//  SleepTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 07/10/23.
//

import UIKit

class SleepTableViewCellScreen: UIView {

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
    
    lazy var sleepTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var sleepOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var sleepTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var sleepThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepThreeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var sleepFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepFourImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var sleepFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepFiveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepFiveLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var sleepSixTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var sleepSixImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var sleepSixLabel: UILabel = {
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
        viewBackground.addSubview(sleepTitleLabel)
        viewBackground.addSubview(sleepOneTitleLabel)
        viewBackground.addSubview(sleepOneImageView)
        viewBackground.addSubview(sleepOneLabel)
        viewBackground.addSubview(sleepTwoTitleLabel)
        viewBackground.addSubview(sleepTwoImageView)
        viewBackground.addSubview(sleepTwoLabel)
        viewBackground.addSubview(sleepThreeTitleLabel)
        viewBackground.addSubview(sleepThreeImageView)
        viewBackground.addSubview(sleepThreeLabel)
        viewBackground.addSubview(sleepFourTitleLabel)
        viewBackground.addSubview(sleepFourImageView)
        viewBackground.addSubview(sleepFourLabel)
        viewBackground.addSubview(sleepFiveTitleLabel)
        viewBackground.addSubview(sleepFiveImageView)
        viewBackground.addSubview(sleepFiveLabel)
        viewBackground.addSubview(sleepSixTitleLabel)
        viewBackground.addSubview(sleepSixImageView)
        viewBackground.addSubview(sleepSixLabel)
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
            
            sleepTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            sleepTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            sleepTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            sleepOneTitleLabel.topAnchor.constraint(equalTo: sleepTitleLabel.bottomAnchor, constant: 30),
            sleepOneTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepOneTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepOneImageView.topAnchor.constraint(equalTo: sleepOneTitleLabel.bottomAnchor, constant: 25),
            sleepOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepOneLabel.topAnchor.constraint(equalTo: sleepOneImageView.bottomAnchor, constant: 25),
            sleepOneLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepOneLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepTwoTitleLabel.topAnchor.constraint(equalTo: sleepOneLabel.bottomAnchor, constant: 30),
            sleepTwoTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepTwoTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepTwoImageView.topAnchor.constraint(equalTo: sleepTwoTitleLabel.bottomAnchor, constant: 25),
            sleepTwoImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepTwoImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepTwoImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepTwoLabel.topAnchor.constraint(equalTo: sleepTwoImageView.bottomAnchor, constant: 25),
            sleepTwoLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepTwoLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepThreeTitleLabel.topAnchor.constraint(equalTo: sleepTwoLabel.bottomAnchor, constant: 30),
            sleepThreeTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepThreeTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepThreeImageView.topAnchor.constraint(equalTo: sleepThreeTitleLabel.bottomAnchor, constant: 25),
            sleepThreeImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepThreeImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepThreeImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepThreeLabel.topAnchor.constraint(equalTo: sleepThreeImageView.bottomAnchor, constant: 25),
            sleepThreeLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepThreeLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepFourTitleLabel.topAnchor.constraint(equalTo: sleepThreeLabel.bottomAnchor, constant: 30),
            sleepFourTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepFourTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepFourImageView.topAnchor.constraint(equalTo: sleepFourTitleLabel.bottomAnchor, constant: 25),
            sleepFourImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepFourImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepFourImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepFourLabel.topAnchor.constraint(equalTo: sleepFourImageView.bottomAnchor, constant: 25),
            sleepFourLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepFourLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepFiveTitleLabel.topAnchor.constraint(equalTo: sleepFourLabel.bottomAnchor, constant: 30),
            sleepFiveTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepFiveTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepFiveImageView.topAnchor.constraint(equalTo: sleepFiveTitleLabel.bottomAnchor, constant: 25),
            sleepFiveImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepFiveImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepFiveImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepFiveLabel.topAnchor.constraint(equalTo: sleepFiveImageView.bottomAnchor, constant: 25),
            sleepFiveLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepFiveLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepSixTitleLabel.topAnchor.constraint(equalTo: sleepFiveLabel.bottomAnchor, constant: 30),
            sleepSixTitleLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepSixTitleLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
            
            sleepSixImageView.topAnchor.constraint(equalTo: sleepSixTitleLabel.bottomAnchor, constant: 25),
            sleepSixImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            sleepSixImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            sleepSixImageView.heightAnchor.constraint(equalToConstant: 250),
            
            sleepSixLabel.topAnchor.constraint(equalTo: sleepSixImageView.bottomAnchor, constant: 25),
            sleepSixLabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            sleepSixLabel.trailingAnchor.constraint(equalTo: sleepTitleLabel.trailingAnchor),
        ])
    }
}
