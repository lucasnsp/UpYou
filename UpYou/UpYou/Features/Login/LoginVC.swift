//
//  LoginVC.swift
//  SafeApp
//
//  Created by Lucas Neves dos santos pompeu on 18/09/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var viewModel: LoginViewModel? = LoginViewModel()
    
    public func configTextFieldsDelegate(delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var rocketImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage.loginImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Iniciar Sessão"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textAlignment = .center
        return label
    }()
    
    lazy var loginDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white.withAlphaComponent(0.7)
        label.text = "Inicie sessão para utilizar o app"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray.withAlphaComponent(0.6)])
        tf.textColor = .darkGray
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 24
        tf.layer.borderWidth = 1.5
        tf.layer.borderColor = UIColor.darkGray.cgColor
        return tf
    }()
    
     lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.autocorrectionType = .no
        tf.backgroundColor = .white
        tf.borderStyle = .roundedRect
        tf.isSecureTextEntry = true
        tf.attributedPlaceholder = NSAttributedString(string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray.withAlphaComponent(0.6)])
        tf.textColor = .darkGray
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 24
        tf.layer.borderWidth = 1.5
        tf.layer.borderColor = UIColor.darkGray.cgColor
        return tf
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.2)
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
        button.clipsToBounds = true
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedLoginButton() {
        viewModel?.loginUser(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
        
    }
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Não tem uma conta? Registre-se", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.addTarget(self, action: #selector(tappedSignUpButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func tappedSignUpButton() {
        let vc: RegisterVC = RegisterVC()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Não tem uma conta? Registre-se", style: .plain, target: nil, action: nil)
        navigationController?.pushViewController(vc, animated: true)}

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.delegate(delegate: self)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(rocketImageView)
        view.addSubview(loginLabel)
        view.addSubview(loginDescriptionLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(signUpButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            rocketImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            rocketImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            rocketImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            rocketImageView.heightAnchor.constraint(equalToConstant: 250),
            
            loginLabel.topAnchor.constraint(equalTo: rocketImageView.bottomAnchor, constant: 35),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginDescriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 8),
            loginDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: loginDescriptionLabel.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45),
            emailTextField.heightAnchor.constraint(equalToConstant: 55),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 45),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -45),
            passwordTextField.heightAnchor.constraint(equalToConstant: 55),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 85),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 60),
            
            signUpButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }

}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        viewModel?.textFieldLoginScreenLayout(textField)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension LoginVC: LoginViewModelDelegate {
    func loginSuccess() {
        print("login com sucesso")
    }
    
    func loginError(errorMessage: String) {
        AlertController(controller: self).getAlert(title: "Login Failed", message: errorMessage)
    }
    
    
}
