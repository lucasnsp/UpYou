//
//  SavingMoneyTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

class SavingMoneyTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: SavingMoneyTableViewCell.self)
    
    private lazy var screen: SavingMoneyTableViewScreen = {
        let view = SavingMoneyTableViewScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraints()
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
    
    public func setupCell(data: Phrase) {
        screen.titleLabel.text = "Financial Quote"
        screen.quoteLabel.text = data.phrase
        screen.authorNamelabel.text = "- \(data.author ?? "")"
        screen.openQuotationMarkImageView.image = UIImage(systemName: "quote.opening")
        screen.openQuotationMarkImageView.tintColor = .white
        screen.closeQuotationMarkImageView.image = UIImage(systemName: "quote.closing")
        screen.closeQuotationMarkImageView.tintColor = .white
    }

}
