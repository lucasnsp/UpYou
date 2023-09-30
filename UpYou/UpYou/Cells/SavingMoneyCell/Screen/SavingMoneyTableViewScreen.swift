//
//  SavingMoneyTableViewScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

class SavingMoneyTableViewScreen: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .center
        return label
    }()
    
    lazy var openQuotationMarkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.italicSystemFont(ofSize: 15)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var authorNamelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    lazy var closeQuotationMarkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black.withAlphaComponent(0.98)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(titleLabel)
        addSubview(openQuotationMarkImageView)
        addSubview(quoteLabel)
        addSubview(authorNamelabel)
        addSubview(closeQuotationMarkImageView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            openQuotationMarkImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            openQuotationMarkImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            openQuotationMarkImageView.heightAnchor.constraint(equalToConstant: 20),
            openQuotationMarkImageView.widthAnchor.constraint(equalToConstant: 20),
            
            quoteLabel.topAnchor.constraint(equalTo: openQuotationMarkImageView.bottomAnchor, constant: 3),
            quoteLabel.leadingAnchor.constraint(equalTo: openQuotationMarkImageView.leadingAnchor),
            quoteLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            authorNamelabel.topAnchor.constraint(equalTo: quoteLabel.bottomAnchor, constant: 3),
            authorNamelabel.trailingAnchor.constraint(equalTo: quoteLabel.trailingAnchor),
            
            closeQuotationMarkImageView.topAnchor.constraint(equalTo: authorNamelabel.bottomAnchor, constant: 3),
            closeQuotationMarkImageView.trailingAnchor.constraint(equalTo: quoteLabel.trailingAnchor),
            closeQuotationMarkImageView.heightAnchor.constraint(equalTo: openQuotationMarkImageView.heightAnchor),
            closeQuotationMarkImageView.widthAnchor.constraint(equalTo: openQuotationMarkImageView.widthAnchor)
        ])
    }
}
