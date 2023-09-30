//
//  DeepWorkTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class DeepWorkTableViewCellScreen: UIView {
    
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
        image.image = UIImage(named: "background")
        return image
    }()
    
    lazy var focusTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var focusOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var focusOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var focusTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var focusTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var focusThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var focusThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var focusFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var focusFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var focusFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var focusFiveLabel: UILabel = {
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
        viewBackground.addSubview(focusTitleLabel)
        viewBackground.addSubview(focusOneTitleLabel)
        viewBackground.addSubview(focusOneLabel)
        viewBackground.addSubview(focusTwoTitleLabel)
        viewBackground.addSubview(focusTwoLabel)
        viewBackground.addSubview(focusThreeTitleLabel)
        viewBackground.addSubview(focusThreeLabel)
        viewBackground.addSubview(focusFourTitleLabel)
        viewBackground.addSubview(focusFourLabel)
        viewBackground.addSubview(focusFiveTitleLabel)
        viewBackground.addSubview(focusFiveLabel)
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
            
            focusTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            focusTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            focusTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            focusOneTitleLabel.topAnchor.constraint(equalTo: focusTitleLabel.bottomAnchor, constant: 30),
            focusOneTitleLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            
            focusOneLabel.topAnchor.constraint(equalTo: focusOneTitleLabel.bottomAnchor, constant: 15),
            focusOneLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            focusOneLabel.trailingAnchor.constraint(equalTo: focusTitleLabel.trailingAnchor),
            
            focusTwoTitleLabel.topAnchor.constraint(equalTo: focusOneLabel.bottomAnchor, constant: 30),
            focusTwoTitleLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            
            focusTwoLabel.topAnchor.constraint(equalTo: focusTwoTitleLabel.bottomAnchor, constant: 15),
            focusTwoLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            focusTwoLabel.trailingAnchor.constraint(equalTo: focusTitleLabel.trailingAnchor),
            
            focusThreeTitleLabel.topAnchor.constraint(equalTo: focusTwoLabel.bottomAnchor, constant: 30),
            focusThreeTitleLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            
            focusThreeLabel.topAnchor.constraint(equalTo: focusThreeTitleLabel.bottomAnchor, constant: 15),
            focusThreeLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            focusThreeLabel.trailingAnchor.constraint(equalTo: focusTitleLabel.trailingAnchor),
            
            focusFourTitleLabel.topAnchor.constraint(equalTo: focusThreeLabel.bottomAnchor, constant: 30),
            focusFourTitleLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            
            focusFourLabel.topAnchor.constraint(equalTo: focusFourTitleLabel.bottomAnchor, constant: 15),
            focusFourLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            focusFourLabel.trailingAnchor.constraint(equalTo: focusTitleLabel.trailingAnchor),
            
            focusFiveTitleLabel.topAnchor.constraint(equalTo: focusFourLabel.bottomAnchor, constant: 30),
            focusFiveTitleLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            
            focusFiveLabel.topAnchor.constraint(equalTo: focusFiveTitleLabel.bottomAnchor, constant: 15),
            focusFiveLabel.leadingAnchor.constraint(equalTo: focusTitleLabel.leadingAnchor),
            focusFiveLabel.trailingAnchor.constraint(equalTo: focusTitleLabel.trailingAnchor),
        ])
    }

}
