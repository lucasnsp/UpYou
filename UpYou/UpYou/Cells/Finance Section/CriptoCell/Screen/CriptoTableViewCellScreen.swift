//
//  CriptoTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class CriptoTableViewCellScreen: UIView {

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
    
    lazy var criptoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var criptoOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var criptoOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var criptoOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var criptoTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var criptoTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var criptoThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var criptoThreeLabel: UILabel = {
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
        viewBackground.addSubview(criptoTitleLabel)
        viewBackground.addSubview(criptoOneTitleLabel)
        viewBackground.addSubview(criptoOneImageView)
        viewBackground.addSubview(criptoOneLabel)
        viewBackground.addSubview(criptoTwoTitleLabel)
        viewBackground.addSubview(criptoTwoLabel)
        viewBackground.addSubview(criptoThreeTitleLabel)
        viewBackground.addSubview(criptoThreeLabel)
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
            
            criptoTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            criptoTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            criptoTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            criptoOneImageView.topAnchor.constraint(equalTo: criptoTitleLabel.bottomAnchor, constant: 25),
            criptoOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            criptoOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            criptoOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            criptoOneTitleLabel.topAnchor.constraint(equalTo: criptoOneImageView.bottomAnchor, constant: 30),
            criptoOneTitleLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoOneTitleLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
            
            criptoOneLabel.topAnchor.constraint(equalTo: criptoOneTitleLabel.bottomAnchor, constant: 25),
            criptoOneLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoOneLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
            
            criptoTwoTitleLabel.topAnchor.constraint(equalTo: criptoOneLabel.bottomAnchor, constant: 30),
            criptoTwoTitleLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoTwoTitleLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
            
            criptoTwoLabel.topAnchor.constraint(equalTo: criptoTwoTitleLabel.bottomAnchor, constant: 25),
            criptoTwoLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoTwoLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
            
            criptoThreeTitleLabel.topAnchor.constraint(equalTo: criptoTwoLabel.bottomAnchor, constant: 30),
            criptoThreeTitleLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoThreeTitleLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
            
            criptoThreeLabel.topAnchor.constraint(equalTo: criptoThreeTitleLabel.bottomAnchor, constant: 25),
            criptoThreeLabel.leadingAnchor.constraint(equalTo: criptoTitleLabel.leadingAnchor),
            criptoThreeLabel.trailingAnchor.constraint(equalTo: criptoTitleLabel.trailingAnchor),
        ])
    }

}
