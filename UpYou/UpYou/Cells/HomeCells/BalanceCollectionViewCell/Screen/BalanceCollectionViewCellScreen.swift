//
//  BalanceCollectionViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class BalanceCollectionViewCellScreen: UIView {
    
    lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Balance"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    lazy var goalsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black.withAlphaComponent(0.8)
        label.text = "Goals & Expenses"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    lazy var goalsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black.withAlphaComponent(0.3)
        button.setImage(UIImage(systemName: "greaterthan"), for: .normal)
        button.addTarget(self, action: #selector(tappedGoalsButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedGoalsButton() {
        print(#function)
    }
    
    lazy var incomeTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "R$ 0.00"
        tf.textColor = UIColor.black
        tf.font = UIFont.boldSystemFont(ofSize: 44)
        tf.keyboardType = .decimalPad
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var addIncomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Add Income", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(tappedAddIncomeButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedAddIncomeButton() {
        print(#function)
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
        addSubview(balanceLabel)
        addSubview(goalsLabel)
        addSubview(goalsButton)
        addSubview(incomeTextField)
        addSubview(addIncomeButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            balanceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            balanceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17),
            
            goalsButton.topAnchor.constraint(equalTo: balanceLabel.topAnchor),
            goalsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            goalsButton.heightAnchor.constraint(equalToConstant: 18),
            goalsButton.widthAnchor.constraint(equalToConstant: 15),
            
            goalsLabel.topAnchor.constraint(equalTo: goalsButton.topAnchor),
            goalsLabel.trailingAnchor.constraint(equalTo: goalsButton.leadingAnchor, constant: -12),
            
            incomeTextField.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor, constant: 22),
            incomeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17),
            incomeTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            
            addIncomeButton.topAnchor.constraint(equalTo: incomeTextField.bottomAnchor, constant: 30),
            addIncomeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            addIncomeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            addIncomeButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
