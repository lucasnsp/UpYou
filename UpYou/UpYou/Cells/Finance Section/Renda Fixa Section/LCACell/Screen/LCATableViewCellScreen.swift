//
//  LCATableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class LCATableViewCellScreen: UIView {
    
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
    
    lazy var lcaTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var lcaOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lcaOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var lcaOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var lcaTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lcaTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var lcaThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lcaThreeLabel: UILabel = {
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
        viewBackground.addSubview(lcaTitleLabel)
        viewBackground.addSubview(lcaOneTitleLabel)
        viewBackground.addSubview(lcaOneImageView)
        viewBackground.addSubview(lcaOneLabel)
        viewBackground.addSubview(lcaTwoTitleLabel)
        viewBackground.addSubview(lcaTwoLabel)
        viewBackground.addSubview(lcaThreeTitleLabel)
        viewBackground.addSubview(lcaThreeLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBackground.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
            
            subImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor),
            
            lcaTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            lcaTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            lcaTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            lcaOneImageView.topAnchor.constraint(equalTo: lcaTitleLabel.bottomAnchor, constant: 25),
            lcaOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            lcaOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            lcaOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            lcaOneTitleLabel.topAnchor.constraint(equalTo: lcaOneImageView.bottomAnchor, constant: 30),
            lcaOneTitleLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaOneTitleLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
            
            lcaOneLabel.topAnchor.constraint(equalTo: lcaOneTitleLabel.bottomAnchor, constant: 25),
            lcaOneLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaOneLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
            
            lcaTwoTitleLabel.topAnchor.constraint(equalTo: lcaOneLabel.bottomAnchor, constant: 30),
            lcaTwoTitleLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaTwoTitleLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
            
            lcaTwoLabel.topAnchor.constraint(equalTo: lcaTwoTitleLabel.bottomAnchor, constant: 25),
            lcaTwoLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaTwoLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
            
            lcaThreeTitleLabel.topAnchor.constraint(equalTo: lcaTwoLabel.bottomAnchor, constant: 30),
            lcaThreeTitleLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaThreeTitleLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
            
            lcaThreeLabel.topAnchor.constraint(equalTo: lcaThreeTitleLabel.bottomAnchor, constant: 25),
            lcaThreeLabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            lcaThreeLabel.trailingAnchor.constraint(equalTo: lcaTitleLabel.trailingAnchor),
        ])
    }

}
