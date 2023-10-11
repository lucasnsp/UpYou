//
//  HomeScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

protocol HomeScreenDelegate: AnyObject {
    func tappedAddIncomeButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenDelegate?
    
    public func delegate(delegate: HomeScreenDelegate?) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
        return image
    }()
    
    lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Home"
        label.font = UIFont.boldSystemFont(ofSize: 27)
        return label
    }()
    
    lazy var viewTopBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 14
        return view
    }()
    
    lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Saldo"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    lazy var addIncomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Adicionar Renda", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(tappedAddIncomeButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedAddIncomeButton() {
        delegate?.tappedAddIncomeButton()
    }
    
    lazy var incomeTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "R$ 0.00", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tf.textColor = UIColor.white
        tf.font = UIFont.boldSystemFont(ofSize: 40)
        tf.keyboardType = .decimalPad
        tf.isEnabled = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()

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
        addSubview(homeLabel)
        addSubview(viewTopBackground)
        viewTopBackground.addSubview(balanceLabel)
        viewTopBackground.addSubview(addIncomeButton)
        viewTopBackground.addSubview(incomeTextField)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            homeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            homeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            viewTopBackground.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 30),
            viewTopBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            viewTopBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            viewTopBackground.heightAnchor.constraint(equalToConstant: 180),
            
            balanceLabel.topAnchor.constraint(equalTo: viewTopBackground.topAnchor, constant: 15),
            balanceLabel.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 17),
            
            incomeTextField.topAnchor.constraint(equalTo: balanceLabel.topAnchor, constant: 35),
            incomeTextField.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 17),
            incomeTextField.trailingAnchor.constraint(equalTo: viewTopBackground.trailingAnchor, constant: -10),

            addIncomeButton.bottomAnchor.constraint(equalTo: viewTopBackground.bottomAnchor, constant: -20),
            addIncomeButton.heightAnchor.constraint(equalToConstant: 50),
            addIncomeButton.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 40),
            addIncomeButton.trailingAnchor.constraint(equalTo: viewTopBackground.trailingAnchor, constant: -40),
        ])
    }

}
