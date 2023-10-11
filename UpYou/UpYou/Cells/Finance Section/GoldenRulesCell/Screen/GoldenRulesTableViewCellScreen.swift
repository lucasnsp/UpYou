//
//  GoldenRulesTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

class GoldenRulesTableViewCellScreen: UIView {

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
    
    lazy var ruleTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var ruleOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var ruleOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var ruleOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var ruleTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var ruleTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var ruleTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var ruleThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var ruleThreeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var ruleThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var ruleFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var ruleFourImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var ruleFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var ruleFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var ruleFiveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var ruleFiveLabel: UILabel = {
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
        viewBackground.addSubview(ruleTitleLabel)
        viewBackground.addSubview(ruleOneTitleLabel)
        viewBackground.addSubview(ruleOneImageView)
        viewBackground.addSubview(ruleOneLabel)
        viewBackground.addSubview(ruleTwoTitleLabel)
        viewBackground.addSubview(ruleTwoImageView)
        viewBackground.addSubview(ruleTwoLabel)
        viewBackground.addSubview(ruleThreeTitleLabel)
        viewBackground.addSubview(ruleThreeImageView)
        viewBackground.addSubview(ruleThreeLabel)
        viewBackground.addSubview(ruleFourTitleLabel)
        viewBackground.addSubview(ruleFourImageView)
        viewBackground.addSubview(ruleFourLabel)
        viewBackground.addSubview(ruleFiveTitleLabel)
        viewBackground.addSubview(ruleFiveImageView)
        viewBackground.addSubview(ruleFiveLabel)

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
            
            ruleTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            ruleTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            ruleTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            ruleOneTitleLabel.topAnchor.constraint(equalTo: ruleTitleLabel.bottomAnchor, constant: 30),
            ruleOneTitleLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleOneTitleLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleOneImageView.topAnchor.constraint(equalTo: ruleOneTitleLabel.bottomAnchor, constant: 25),
            ruleOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            ruleOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            ruleOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            ruleOneLabel.topAnchor.constraint(equalTo: ruleOneImageView.bottomAnchor, constant: 25),
            ruleOneLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleOneLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleTwoTitleLabel.topAnchor.constraint(equalTo: ruleOneLabel.bottomAnchor, constant: 30),
            ruleTwoTitleLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleTwoTitleLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleTwoImageView.topAnchor.constraint(equalTo: ruleTwoTitleLabel.bottomAnchor, constant: 25),
            ruleTwoImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            ruleTwoImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            ruleTwoImageView.heightAnchor.constraint(equalToConstant: 250),
            
            ruleTwoLabel.topAnchor.constraint(equalTo: ruleTwoImageView.bottomAnchor, constant: 25),
            ruleTwoLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleTwoLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleThreeTitleLabel.topAnchor.constraint(equalTo: ruleTwoLabel.bottomAnchor, constant: 30),
            ruleThreeTitleLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleThreeTitleLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleThreeImageView.topAnchor.constraint(equalTo: ruleThreeTitleLabel.bottomAnchor, constant: 25),
            ruleThreeImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            ruleThreeImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            ruleThreeImageView.heightAnchor.constraint(equalToConstant: 250),
            
            ruleThreeLabel.topAnchor.constraint(equalTo: ruleThreeImageView.bottomAnchor, constant: 25),
            ruleThreeLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleThreeLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleFourTitleLabel.topAnchor.constraint(equalTo: ruleThreeLabel.bottomAnchor, constant: 30),
            ruleFourTitleLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleFourTitleLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleFourImageView.topAnchor.constraint(equalTo: ruleFourTitleLabel.bottomAnchor, constant: 25),
            ruleFourImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            ruleFourImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            ruleFourImageView.heightAnchor.constraint(equalToConstant: 250),
            
            ruleFourLabel.topAnchor.constraint(equalTo: ruleFourImageView.bottomAnchor, constant: 25),
            ruleFourLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleFourLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleFiveTitleLabel.topAnchor.constraint(equalTo: ruleFourLabel.bottomAnchor, constant: 30),
            ruleFiveTitleLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleFiveTitleLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
            
            ruleFiveImageView.topAnchor.constraint(equalTo: ruleFiveTitleLabel.bottomAnchor, constant: 25),
            ruleFiveImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            ruleFiveImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            ruleFiveImageView.heightAnchor.constraint(equalToConstant: 250),
            
            ruleFiveLabel.topAnchor.constraint(equalTo: ruleFiveImageView.bottomAnchor, constant: 25),
            ruleFiveLabel.leadingAnchor.constraint(equalTo: ruleTitleLabel.leadingAnchor),
            ruleFiveLabel.trailingAnchor.constraint(equalTo: ruleTitleLabel.trailingAnchor),
        ])
    }

}
