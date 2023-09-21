//
//  BalanceCollectionViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class BalanceCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: BalanceCollectionViewCell.self)
    
    private lazy var screen: BalanceCollectionViewCellScreen = {
        let view = BalanceCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
        screen.delegate(delegate: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public func setupCell() {
        screen.balanceLabel.text = "Balance"
        screen.goalsLabel.text = "Goals & Expenses"
        screen.goalsButton.setImage(UIImage(systemName: "greaterthan"), for: .normal)
    }
}

extension BalanceCollectionViewCell: BalanceCollectionViewDelegate {
    func tappedGoalsButton() {
        print(#function)
    }
}
