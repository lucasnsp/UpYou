//
//  CustomButtonView.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 18/10/23.
//

import UIKit

class CustomButtonView: UIView {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.layer.cornerRadius = 14
        imageView.isUserInteractionEnabled = true

        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var chevronImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .white.withAlphaComponent(0.8)
        return imageView
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedButton() {
        print(#function)
    }
    
    init(image: UIImage?, title: String, subTitle: String, target: Any?, action: Selector, chevron: UIImage) {
        super.init(frame: .zero)
        
        imageView.image = image
        titleLabel.text = title
        subTitleLabel.text = subTitle
        button.addTarget(target, action: action, for: .touchUpInside)
        chevronImage.image = chevron
        
        setupUI()
        setupConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(chevronImage)
        addSubview(button)
    }
    
    private func setupConfiguration() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 14),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            chevronImage.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 12),
            chevronImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            chevronImage.heightAnchor.constraint(equalToConstant: 15),
            chevronImage.widthAnchor.constraint(equalToConstant: 15),
            
            button.topAnchor.constraint(equalTo: self.topAnchor),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
        ])
    }
}
