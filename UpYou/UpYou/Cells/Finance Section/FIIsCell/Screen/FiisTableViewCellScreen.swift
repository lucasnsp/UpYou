//
//  FiisTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class FiisTableViewCellScreen: UIView {

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
    
    lazy var fiisTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var fiisOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var fiisOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var fiisOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var fiisTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var fiisTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var fiisThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var fiisThreeLabel: UILabel = {
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
        viewBackground.addSubview(fiisTitleLabel)
        viewBackground.addSubview(fiisOneTitleLabel)
        viewBackground.addSubview(fiisOneImageView)
        viewBackground.addSubview(fiisOneLabel)
        viewBackground.addSubview(fiisTwoTitleLabel)
        viewBackground.addSubview(fiisTwoLabel)
        viewBackground.addSubview(fiisThreeTitleLabel)
        viewBackground.addSubview(fiisThreeLabel)
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
            
            fiisTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            fiisTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            fiisTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            fiisOneImageView.topAnchor.constraint(equalTo: fiisTitleLabel.bottomAnchor, constant: 25),
            fiisOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            fiisOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            fiisOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            fiisOneTitleLabel.topAnchor.constraint(equalTo: fiisOneImageView.bottomAnchor, constant: 30),
            fiisOneTitleLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisOneTitleLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
            
            fiisOneLabel.topAnchor.constraint(equalTo: fiisOneTitleLabel.bottomAnchor, constant: 25),
            fiisOneLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisOneLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
            
            fiisTwoTitleLabel.topAnchor.constraint(equalTo: fiisOneLabel.bottomAnchor, constant: 30),
            fiisTwoTitleLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisTwoTitleLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
            
            fiisTwoLabel.topAnchor.constraint(equalTo: fiisTwoTitleLabel.bottomAnchor, constant: 25),
            fiisTwoLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisTwoLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
            
            fiisThreeTitleLabel.topAnchor.constraint(equalTo: fiisTwoLabel.bottomAnchor, constant: 30),
            fiisThreeTitleLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisThreeTitleLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
            
            fiisThreeLabel.topAnchor.constraint(equalTo: fiisThreeTitleLabel.bottomAnchor, constant: 25),
            fiisThreeLabel.leadingAnchor.constraint(equalTo: fiisTitleLabel.leadingAnchor),
            fiisThreeLabel.trailingAnchor.constraint(equalTo: fiisTitleLabel.trailingAnchor),
        ])
    }

}
