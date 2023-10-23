//
//  StoicismTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

class StoicismTableViewCellScreen: UIView {

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
    
    lazy var stoicismTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var stoicismOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stoicismOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stoicismOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stoicismTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stoicismTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stoicismTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stoicismThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stoicismThreeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stoicismThreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stoicismFourTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stoicismFourImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stoicismFourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stoicismFiveTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stoicismFiveImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stoicismFiveLabel: UILabel = {
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
        viewBackground.addSubview(stoicismTitleLabel)
        viewBackground.addSubview(stoicismOneTitleLabel)
        viewBackground.addSubview(stoicismOneImageView)
        viewBackground.addSubview(stoicismOneLabel)
        viewBackground.addSubview(stoicismTwoTitleLabel)
        viewBackground.addSubview(stoicismTwoImageView)
        viewBackground.addSubview(stoicismTwoLabel)
        viewBackground.addSubview(stoicismThreeTitleLabel)
        viewBackground.addSubview(stoicismThreeImageView)
        viewBackground.addSubview(stoicismThreeLabel)
        viewBackground.addSubview(stoicismFourTitleLabel)
        viewBackground.addSubview(stoicismFourImageView)
        viewBackground.addSubview(stoicismFourLabel)
        viewBackground.addSubview(stoicismFiveTitleLabel)
        viewBackground.addSubview(stoicismFiveImageView)
        viewBackground.addSubview(stoicismFiveLabel)
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
            
            stoicismTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            stoicismTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            stoicismTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            stoicismOneTitleLabel.topAnchor.constraint(equalTo: stoicismTitleLabel.bottomAnchor, constant: 30),
            stoicismOneTitleLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismOneTitleLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismOneImageView.topAnchor.constraint(equalTo: stoicismOneTitleLabel.bottomAnchor, constant: 25),
            stoicismOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stoicismOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stoicismOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stoicismOneLabel.topAnchor.constraint(equalTo: stoicismOneImageView.bottomAnchor, constant: 25),
            stoicismOneLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismOneLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismTwoTitleLabel.topAnchor.constraint(equalTo: stoicismOneLabel.bottomAnchor, constant: 30),
            stoicismTwoTitleLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismTwoTitleLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismTwoImageView.topAnchor.constraint(equalTo: stoicismTwoTitleLabel.bottomAnchor, constant: 25),
            stoicismTwoImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stoicismTwoImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stoicismTwoImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stoicismTwoLabel.topAnchor.constraint(equalTo: stoicismTwoImageView.bottomAnchor, constant: 25),
            stoicismTwoLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismTwoLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismThreeTitleLabel.topAnchor.constraint(equalTo: stoicismTwoLabel.bottomAnchor, constant: 30),
            stoicismThreeTitleLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismThreeTitleLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismThreeImageView.topAnchor.constraint(equalTo: stoicismThreeTitleLabel.bottomAnchor, constant: 25),
            stoicismThreeImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stoicismThreeImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stoicismThreeImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stoicismThreeLabel.topAnchor.constraint(equalTo: stoicismThreeImageView.bottomAnchor, constant: 25),
            stoicismThreeLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismThreeLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismFourTitleLabel.topAnchor.constraint(equalTo: stoicismThreeLabel.bottomAnchor, constant: 30),
            stoicismFourTitleLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismFourTitleLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismFourImageView.topAnchor.constraint(equalTo: stoicismFourTitleLabel.bottomAnchor, constant: 25),
            stoicismFourImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stoicismFourImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stoicismFourImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stoicismFourLabel.topAnchor.constraint(equalTo: stoicismFourImageView.bottomAnchor, constant: 25),
            stoicismFourLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismFourLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismFiveTitleLabel.topAnchor.constraint(equalTo: stoicismFourLabel.bottomAnchor, constant: 30),
            stoicismFiveTitleLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismFiveTitleLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
            
            stoicismFiveImageView.topAnchor.constraint(equalTo: stoicismFiveTitleLabel.bottomAnchor, constant: 25),
            stoicismFiveImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stoicismFiveImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stoicismFiveImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stoicismFiveLabel.topAnchor.constraint(equalTo: stoicismFiveImageView.bottomAnchor, constant: 25),
            stoicismFiveLabel.leadingAnchor.constraint(equalTo: stoicismTitleLabel.leadingAnchor),
            stoicismFiveLabel.trailingAnchor.constraint(equalTo: stoicismTitleLabel.trailingAnchor),
        ])
    }

}
