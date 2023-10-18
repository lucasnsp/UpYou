//
//  CustomButtonView.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 18/10/23.
//

import UIKit

protocol CustomButtonViewDelegate: AnyObject {
    func tappedBooksButton()
}

class CustomButtonView: UIView {
    
    weak var delegate: CustomButtonViewDelegate?
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
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
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = UIColor.white
        return button
    }()
    
    init(image: UIImage?, title: String, subTitle: String, buttonImage: UIImage?, target: Any?, action: Selector) {
        super.init(frame: .zero)
        
        imageView.image = image
        titleLabel.text = title
        subTitleLabel.text = subTitle
        button.setImage(buttonImage, for: .normal)
        button.addTarget(target, action: action, for: .touchUpInside)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    @objc
    func tappedButton() {
        self.delegate?.tappedBooksButton()
    }
    
    private func setupUI() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(button)
    }
    
    private func setupConfiguration() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            imageView.heightAnchor.constraint(equalToConstant: 40),
            imageView.widthAnchor.constraint(equalToConstant: 40),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            
            button.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 12),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 12),
            button.widthAnchor.constraint(equalToConstant: 20),
            button.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
