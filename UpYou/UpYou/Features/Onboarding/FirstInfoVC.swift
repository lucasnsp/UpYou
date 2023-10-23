//
//  ApresentationViewController.swift
//  SafeApp
//
//  Created by Lucas Neves dos santos pompeu on 18/09/23.
//

import UIKit

class FirstInfoVC: UIViewController {
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var walletImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.walletImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Bem-Vindo ao UPYOU"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Aqui, você poderá manejar as suas finanças de forma inteligente. Vamos construir juntos um futuro financeiro mais sólido."
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16.5, weight: .semibold)
        return label
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Continuar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(tappedContinueButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedContinueButton() {
        let vc: SecondInfoVC = SecondInfoVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configConstraints()
        
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(walletImageView)
        view.addSubview(titleLabel)
        view.addSubview(textLabel)
        view.addSubview(continueButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            walletImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            walletImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            walletImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            walletImageView.heightAnchor.constraint(equalToConstant: 350),
            
            titleLabel.topAnchor.constraint(equalTo: walletImageView.bottomAnchor, constant: 45),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 45),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            continueButton.widthAnchor.constraint(equalToConstant: 260),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            continueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
        ])
    }
}

