//
//  TesouroDiretoTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import UIKit

class TesouroDiretoTableViewCellScreen: UIView {

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
    
    lazy var tdTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var tdOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var tdOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdThreeLabel: UILabel = {
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
        viewBackground.addSubview(tdTitleLabel)
        viewBackground.addSubview(tdOneTitleLabel)
        viewBackground.addSubview(tdOneImageView)
        viewBackground.addSubview(tdOneLabel)
        viewBackground.addSubview(tdTwoTitleLabel)
        viewBackground.addSubview(tdTwoLabel)
        viewBackground.addSubview(tdThreeTitleLabel)
        viewBackground.addSubview(tdThreeLabel)
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
            
            tdTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            tdTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            tdTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            tdOneImageView.topAnchor.constraint(equalTo: tdTitleLabel.bottomAnchor, constant: 25),
            tdOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            tdOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            tdOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            tdOneTitleLabel.topAnchor.constraint(equalTo: tdOneImageView.bottomAnchor, constant: 30),
            tdOneTitleLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdOneTitleLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
            
            tdOneLabel.topAnchor.constraint(equalTo: tdOneTitleLabel.bottomAnchor, constant: 25),
            tdOneLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdOneLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
            
            tdTwoTitleLabel.topAnchor.constraint(equalTo: tdOneLabel.bottomAnchor, constant: 30),
            tdTwoTitleLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdTwoTitleLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
            
            tdTwoLabel.topAnchor.constraint(equalTo: tdTwoTitleLabel.bottomAnchor, constant: 25),
            tdTwoLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdTwoLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
            
            tdThreeTitleLabel.topAnchor.constraint(equalTo: tdTwoLabel.bottomAnchor, constant: 30),
            tdThreeTitleLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdThreeTitleLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
            
            tdThreeLabel.topAnchor.constraint(equalTo: tdThreeTitleLabel.bottomAnchor, constant: 25),
            tdThreeLabel.leadingAnchor.constraint(equalTo: tdTitleLabel.leadingAnchor),
            tdThreeLabel.trailingAnchor.constraint(equalTo: tdTitleLabel.trailingAnchor),
        ])
    }
}
