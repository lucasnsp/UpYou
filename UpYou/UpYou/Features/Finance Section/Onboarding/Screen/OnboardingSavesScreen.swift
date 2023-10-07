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
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()
    
    lazy var moneyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "macaco_dinheiro")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 35
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.black.cgColor
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Independência Financeira"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Capacite-se com conhecimentos sobre investimentos e dicas de gestão financeira."
        label.textColor = .white
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
        button.setTitle("Continuar", for: .normal)
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
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(subImageView)
        addSubview(moneyImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(bagOfMoneyImageView)
        addSubview(continueButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            moneyImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            moneyImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            moneyImageView.heightAnchor.constraint(equalToConstant: 65),
            moneyImageView.widthAnchor.constraint(equalToConstant: 70),
            
            titleLabel.topAnchor.constraint(equalTo: moneyImageView.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            bagOfMoneyImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            bagOfMoneyImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            bagOfMoneyImageView.heightAnchor.constraint(equalToConstant: 280),
            bagOfMoneyImageView.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -110),
            
            continueButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            continueButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            continueButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            continueButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
    
}
