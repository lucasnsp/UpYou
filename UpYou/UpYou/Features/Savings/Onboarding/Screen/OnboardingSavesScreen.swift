//
//  OnboardingSavesScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 21/09/23.
//

import UIKit

protocol OnboardingSavesScreenDelegate: AnyObject {
    func tappedContinueButton()
}

class OnboardingSavesScreen: UIView {
    
    private weak var delegate: OnboardingSavesScreenDelegate?
    
    public func delegate(delegate: OnboardingSavesScreenDelegate?) {
        self.delegate = delegate
    }

    
    lazy var moneyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "money_logo")
        imageView.tintColor = UIColor(red: 0.38, green: 0.83, blue: 0.38, alpha: 1.00)
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pay yourself first"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Set aside 10% of your income for yourself, this is the first golden rule of the richest man in Babylon."
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var bagOfMoneyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.image = UIImage(named: "saco_de_dinheiro")
        return imageView
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGreen
        button.clipsToBounds = true
        button.layer.cornerRadius = 24
        button.setTitle("Continue", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
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
        addSubview(moneyImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(bagOfMoneyImageView)
        addSubview(continueButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            moneyImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            moneyImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            moneyImageView.heightAnchor.constraint(equalToConstant: 65),
            moneyImageView.widthAnchor.constraint(equalToConstant: 70),
            
            titleLabel.topAnchor.constraint(equalTo: moneyImageView.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            bagOfMoneyImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 45),
            bagOfMoneyImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            bagOfMoneyImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            bagOfMoneyImageView.heightAnchor.constraint(equalToConstant: 280),
            
            continueButton.topAnchor.constraint(equalTo: bagOfMoneyImageView.bottomAnchor, constant: 60),
            continueButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            continueButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }

}
