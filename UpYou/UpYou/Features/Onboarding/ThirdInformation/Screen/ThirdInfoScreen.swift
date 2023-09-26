//
//  ThirdInfoScreen.swift
//  SafeApp
//
//  Created by Lucas Neves dos santos pompeu on 18/09/23.
//

import UIKit

protocol ThirdInfoDelegate: AnyObject {
    func tappedContinueButton()
}

class ThirdInfoScreen: UIView {

    private weak var delegate: ThirdInfoDelegate?
    
    public func delegate(delegate: ThirdInfoDelegate?) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()

    lazy var treasureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "mapa_do_tesouro")
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Discover your path"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "We'll guide you on the journey to achieve your goals, step by step, creating good habits, learning how to save money and reaching your full potential."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16.5, weight: .semibold)
        return label
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Are you ready?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(tappedContinueButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedContinueButton() {
        delegate?.tappedContinueButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(subImageView)
        addSubview(treasureImageView)
        addSubview(titleLabel)
        addSubview(textLabel)
        addSubview(continueButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            treasureImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            treasureImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            treasureImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            treasureImageView.heightAnchor.constraint(equalToConstant: 350),
            
            titleLabel.topAnchor.constraint(equalTo: treasureImageView.bottomAnchor, constant: 45),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 45),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            continueButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 85),
            continueButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            continueButton.widthAnchor.constraint(equalToConstant: 260),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}
