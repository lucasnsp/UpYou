//
//  SelfDevelopmentScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 22/09/23.
//

import UIKit

protocol SelfDevelopmentScreenDelegate: AnyObject {
    func tappedContinueButton()
}

class SelfDevelopmentScreen: UIView {
    
    private weak var delegate: SelfDevelopmentScreenDelegate?
    
    public func delegate(delegate: SelfDevelopmentScreenDelegate) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()

    lazy var sharkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "tubarão_treinando")
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
        label.text = "1% Better everyday"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Discover the Keys to Self-Improvement: Unleash Your Potential, Cultivate Habits, and Master Self-Knowledge."
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    lazy var developmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.image = UIImage(named: "gestão_pessoal")
        return imageView
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
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
        addSubview(subImageView)
        addSubview(sharkImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(developmentImageView)
        addSubview(continueButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            sharkImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            sharkImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            sharkImageView.heightAnchor.constraint(equalToConstant: 65),
            sharkImageView.widthAnchor.constraint(equalToConstant: 70),
            
            titleLabel.topAnchor.constraint(equalTo: sharkImageView.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            
            developmentImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 45),
            developmentImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
            developmentImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            developmentImageView.heightAnchor.constraint(equalToConstant: 280),
            
            continueButton.topAnchor.constraint(equalTo: developmentImageView.bottomAnchor, constant: 60),
            continueButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            continueButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }

}
