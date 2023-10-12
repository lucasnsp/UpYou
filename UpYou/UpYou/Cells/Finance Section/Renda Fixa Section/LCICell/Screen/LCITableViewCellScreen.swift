//
//  LCITableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class LCITableViewCellScreen: UIView {

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
    
    lazy var lciTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var lciOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lciOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var lciOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var lciTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lciTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var lciThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lciThreeLabel: UILabel = {
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
        viewBackground.addSubview(lciTitleLabel)
        viewBackground.addSubview(lciOneTitleLabel)
        viewBackground.addSubview(lciOneImageView)
        viewBackground.addSubview(lciOneLabel)
        viewBackground.addSubview(lciTwoTitleLabel)
        viewBackground.addSubview(lciTwoLabel)
        viewBackground.addSubview(lciThreeTitleLabel)
        viewBackground.addSubview(lciThreeLabel)
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
            
            lciTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            lciTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            lciTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            lciOneImageView.topAnchor.constraint(equalTo: lciTitleLabel.bottomAnchor, constant: 25),
            lciOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            lciOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            lciOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            lciOneTitleLabel.topAnchor.constraint(equalTo: lciOneImageView.bottomAnchor, constant: 30),
            lciOneTitleLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciOneTitleLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
            
            lciOneLabel.topAnchor.constraint(equalTo: lciOneTitleLabel.bottomAnchor, constant: 25),
            lciOneLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciOneLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
            
            lciTwoTitleLabel.topAnchor.constraint(equalTo: lciOneLabel.bottomAnchor, constant: 30),
            lciTwoTitleLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciTwoTitleLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
            
            lciTwoLabel.topAnchor.constraint(equalTo: lciTwoTitleLabel.bottomAnchor, constant: 25),
            lciTwoLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciTwoLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
            
            lciThreeTitleLabel.topAnchor.constraint(equalTo: lciTwoLabel.bottomAnchor, constant: 30),
            lciThreeTitleLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciThreeTitleLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
            
            lciThreeLabel.topAnchor.constraint(equalTo: lciThreeTitleLabel.bottomAnchor, constant: 25),
            lciThreeLabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            lciThreeLabel.trailingAnchor.constraint(equalTo: lciTitleLabel.trailingAnchor),
        ])
    }
}
