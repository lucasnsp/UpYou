//
//  CustomButtonLayout.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/10/23.
//

import UIKit

class CustomButtonLayout: UIView {
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
//        imageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        imageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imageView.layer.cornerRadius = 18
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
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
    
    init(image: UIImage?, title: String, target: Any?, action: Selector, chevron: UIImage) {
        super.init(frame: .zero)
        
        imageView.image = image
        titleLabel.text = title
        button.addTarget(target, action: action, for: .touchUpInside)
        chevronImage.image = chevron
        
        setupUI()
        setupConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(titleLabel)
        addSubview(chevronImage)
        addSubview(imageView)
        addSubview(button)
    }
    
    private func setupConfiguration() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            chevronImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            chevronImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            chevronImage.widthAnchor.constraint(equalToConstant: 15),
            chevronImage.heightAnchor.constraint(equalToConstant: 15),
            
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 35),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            
            button.topAnchor.constraint(equalTo: self.topAnchor),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }

}
