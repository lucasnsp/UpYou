//
//  TesouroSelicTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroSelicTableViewCellScreen: UIView {

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
    
    lazy var tdsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var tdsOneTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdsOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 22
        return imageView
    }()
    
    lazy var tdsOneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdsTwoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdsTwoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var tdsThreeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var tdsThreeLabel: UILabel = {
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
        viewBackground.addSubview(tdsTitleLabel)
        viewBackground.addSubview(tdsOneTitleLabel)
        viewBackground.addSubview(tdsOneImageView)
        viewBackground.addSubview(tdsOneLabel)
        viewBackground.addSubview(tdsTwoTitleLabel)
        viewBackground.addSubview(tdsTwoLabel)
        viewBackground.addSubview(tdsThreeTitleLabel)
        viewBackground.addSubview(tdsThreeLabel)
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
            
            tdsTitleLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            tdsTitleLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            tdsTitleLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            tdsOneImageView.topAnchor.constraint(equalTo: tdsTitleLabel.bottomAnchor, constant: 25),
            tdsOneImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 30),
            tdsOneImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -30),
            tdsOneImageView.heightAnchor.constraint(equalToConstant: 250),
            
            tdsOneTitleLabel.topAnchor.constraint(equalTo: tdsOneImageView.bottomAnchor, constant: 30),
            tdsOneTitleLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsOneTitleLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
            
            tdsOneLabel.topAnchor.constraint(equalTo: tdsOneTitleLabel.bottomAnchor, constant: 25),
            tdsOneLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsOneLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
            
            tdsTwoTitleLabel.topAnchor.constraint(equalTo: tdsOneLabel.bottomAnchor, constant: 30),
            tdsTwoTitleLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsTwoTitleLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
            
            tdsTwoLabel.topAnchor.constraint(equalTo: tdsTwoTitleLabel.bottomAnchor, constant: 25),
            tdsTwoLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsTwoLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
            
            tdsThreeTitleLabel.topAnchor.constraint(equalTo: tdsTwoLabel.bottomAnchor, constant: 30),
            tdsThreeTitleLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsThreeTitleLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
            
            tdsThreeLabel.topAnchor.constraint(equalTo: tdsThreeTitleLabel.bottomAnchor, constant: 25),
            tdsThreeLabel.leadingAnchor.constraint(equalTo: tdsTitleLabel.leadingAnchor),
            tdsThreeLabel.trailingAnchor.constraint(equalTo: tdsTitleLabel.trailingAnchor),
        ])
    }


}
