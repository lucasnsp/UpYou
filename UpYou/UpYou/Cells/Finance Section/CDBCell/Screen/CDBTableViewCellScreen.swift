//
//  CDBTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class CDBTableViewCellScreen: UIView {
    
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
    
    lazy var cdbTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var cdbOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var cdbOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var cdbOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var cdbTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var cdbTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var cdbThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var cdbThreeLabel: UILabel = {
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
        viewBackground.addSubview(cdbTitleLabel)
        viewBackground.addSubview(cdbOneTitleLabel)
        viewBackground.addSubview(cdbOneImageView)
        viewBackground.addSubview(cdbOneLabel)
        viewBackground.addSubview(cdbTwoTitleLabel)
        viewBackground.addSubview(cdbTwoLabel)
        viewBackground.addSubview(cdbThreeTitleLabel)
        viewBackground.addSubview(cdbThreeLabel)
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
            
            cdbTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            cdbTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            cdbTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            cdbOneImageView.topAnchor.constraint(equalTo: cdbTitleLabel.bottomAnchor, constant: 25),
            cdbOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            cdbOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            cdbOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            cdbOneTitleLabel.topAnchor.constraint(equalTo: cdbOneImageView.bottomAnchor, constant: 30),
            cdbOneTitleLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbOneTitleLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
            
            cdbOneLabel.topAnchor.constraint(equalTo: cdbOneTitleLabel.bottomAnchor, constant: 25),
            cdbOneLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbOneLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
            
            cdbTwoTitleLabel.topAnchor.constraint(equalTo: cdbOneLabel.bottomAnchor, constant: 30),
            cdbTwoTitleLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbTwoTitleLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
            
            cdbTwoLabel.topAnchor.constraint(equalTo: cdbTwoTitleLabel.bottomAnchor, constant: 25),
            cdbTwoLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbTwoLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
            
            cdbThreeTitleLabel.topAnchor.constraint(equalTo: cdbTwoLabel.bottomAnchor, constant: 30),
            cdbThreeTitleLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbThreeTitleLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
            
            cdbThreeLabel.topAnchor.constraint(equalTo: cdbThreeTitleLabel.bottomAnchor, constant: 25),
            cdbThreeLabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            cdbThreeLabel.trailingAnchor.constraint(equalTo: cdbTitleLabel.trailingAnchor),
        ])
    }

}
