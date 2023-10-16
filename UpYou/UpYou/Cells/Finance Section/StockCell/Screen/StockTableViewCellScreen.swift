//
//  StockTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 16/10/23.
//

import UIKit

class StockTableViewCellScreen: UIView {

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
    
    lazy var stockTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var stockOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stockOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var stockOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stockTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stockTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var stockThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var stockThreeLabel: UILabel = {
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
        viewBackground.addSubview(stockTitleLabel)
        viewBackground.addSubview(stockOneTitleLabel)
        viewBackground.addSubview(stockOneImageView)
        viewBackground.addSubview(stockOneLabel)
        viewBackground.addSubview(stockTwoTitleLabel)
        viewBackground.addSubview(stockTwoLabel)
        viewBackground.addSubview(stockThreeTitleLabel)
        viewBackground.addSubview(stockThreeLabel)
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
            
            stockTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            stockTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            stockTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            stockOneImageView.topAnchor.constraint(equalTo: stockTitleLabel.bottomAnchor, constant: 25),
            stockOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            stockOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            stockOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            stockOneTitleLabel.topAnchor.constraint(equalTo: stockOneImageView.bottomAnchor, constant: 30),
            stockOneTitleLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockOneTitleLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
            
            stockOneLabel.topAnchor.constraint(equalTo: stockOneTitleLabel.bottomAnchor, constant: 25),
            stockOneLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockOneLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
            
            stockTwoTitleLabel.topAnchor.constraint(equalTo: stockOneLabel.bottomAnchor, constant: 30),
            stockTwoTitleLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockTwoTitleLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
            
            stockTwoLabel.topAnchor.constraint(equalTo: stockTwoTitleLabel.bottomAnchor, constant: 25),
            stockTwoLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockTwoLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
            
            stockThreeTitleLabel.topAnchor.constraint(equalTo: stockTwoLabel.bottomAnchor, constant: 30),
            stockThreeTitleLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockThreeTitleLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
            
            stockThreeLabel.topAnchor.constraint(equalTo: stockThreeTitleLabel.bottomAnchor, constant: 25),
            stockThreeLabel.leadingAnchor.constraint(equalTo: stockTitleLabel.leadingAnchor),
            stockThreeLabel.trailingAnchor.constraint(equalTo: stockTitleLabel.trailingAnchor),
        ])
    }

}
