//
//  SecondInfoScreen.swift
//  SafeApp
//
//  Created by Lucas Neves dos santos pompeu on 18/09/23.
//

import UIKit

protocol SecondInfoDelegate: AnyObject {
    func tappedContinueButton()
}

class SecondInfoScreen: UIView {
    
    private weak var delegate: SecondInfoDelegate?
    
    public func delegate(delegate: SecondInfoDelegate?) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()

    lazy var safeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 24
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "cofre_porquinho")
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Not just a Finance App"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "At UpYou, it's not just about tracking expenses, but also about creating and building the right mindset to succed in life."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16.5, weight: .semibold)
        return label
    }()
    
    lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("There's more", for: .normal)
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
        addSubview(safeImageView)
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
            
            safeImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            safeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            safeImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            safeImageView.heightAnchor.constraint(equalToConstant: 350),
            
            titleLabel.topAnchor.constraint(equalTo: safeImageView.bottomAnchor, constant: 45),
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