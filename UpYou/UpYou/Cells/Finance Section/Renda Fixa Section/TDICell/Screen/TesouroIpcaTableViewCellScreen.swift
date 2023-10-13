//
//  TesouroIpcaTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroIpcaTableViewCellScreen: UIView {

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
    
    lazy var tdiTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var tdiOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdiOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var tdiOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdiTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdiTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdiThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdiThreeLabel: UILabel = {
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
        viewBackground.addSubview(tdiTitleLabel)
        viewBackground.addSubview(tdiOneTitleLabel)
        viewBackground.addSubview(tdiOneImageView)
        viewBackground.addSubview(tdiOneLabel)
        viewBackground.addSubview(tdiTwoTitleLabel)
        viewBackground.addSubview(tdiTwoLabel)
        viewBackground.addSubview(tdiThreeTitleLabel)
        viewBackground.addSubview(tdiThreeLabel)
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
            
            tdiTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            tdiTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            tdiTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            tdiOneImageView.topAnchor.constraint(equalTo: tdiTitleLabel.bottomAnchor, constant: 25),
            tdiOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            tdiOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            tdiOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            tdiOneTitleLabel.topAnchor.constraint(equalTo: tdiOneImageView.bottomAnchor, constant: 30),
            tdiOneTitleLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiOneTitleLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
            
            tdiOneLabel.topAnchor.constraint(equalTo: tdiOneTitleLabel.bottomAnchor, constant: 25),
            tdiOneLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiOneLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
            
            tdiTwoTitleLabel.topAnchor.constraint(equalTo: tdiOneLabel.bottomAnchor, constant: 30),
            tdiTwoTitleLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiTwoTitleLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
            
            tdiTwoLabel.topAnchor.constraint(equalTo: tdiTwoTitleLabel.bottomAnchor, constant: 25),
            tdiTwoLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiTwoLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
            
            tdiThreeTitleLabel.topAnchor.constraint(equalTo: tdiTwoLabel.bottomAnchor, constant: 30),
            tdiThreeTitleLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiThreeTitleLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
            
            tdiThreeLabel.topAnchor.constraint(equalTo: tdiThreeTitleLabel.bottomAnchor, constant: 25),
            tdiThreeLabel.leadingAnchor.constraint(equalTo: tdiTitleLabel.leadingAnchor),
            tdiThreeLabel.trailingAnchor.constraint(equalTo: tdiTitleLabel.trailingAnchor),
        ])
    }

}
