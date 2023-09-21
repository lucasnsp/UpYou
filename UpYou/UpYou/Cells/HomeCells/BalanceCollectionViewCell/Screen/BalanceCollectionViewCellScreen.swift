//
//  BalanceCollectionViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

protocol BalanceCollectionViewDelegate: AnyObject {
    func tappedGoalsButton()
}

class BalanceCollectionViewCellScreen: UIView {
    
    private weak var delegate: BalanceCollectionViewDelegate?
    
    public func delegate(delegate: BalanceCollectionViewDelegate?) {
        self.delegate = delegate
    }

    
    lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    lazy var goalsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black.withAlphaComponent(0.8)
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
        delegate?.tappedGoalsButton()
    }
    
//    lazy var incomeTextField: UITextField = {
//        let tf = UITextField()
//        tf.placeholder = "R$ 0.00"
//        tf.textColor = UIColor.black
//        tf.font = UIFont.boldSystemFont(ofSize: 44)
//        tf.keyboardType = .decimalPad
//        tf.translatesAutoresizingMaskIntoConstraints = false
//        return tf
//    }()
    
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
            
        ])
    }
}
