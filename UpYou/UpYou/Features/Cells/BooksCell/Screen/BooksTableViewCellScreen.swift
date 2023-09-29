//
//  BooksTableViewCellScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import UIKit

class BooksTableViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        view.clipsToBounds = true
        view.layer.cornerRadius = 18
        return view
    }()
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()
    
    lazy var bookImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    lazy var bookNamelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var bookDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var bookScorelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(viewBackground)
        viewBackground.addSubview(subImageView)
        viewBackground.addSubview(bookImageView)
        viewBackground.addSubview(bookNamelabel)
        viewBackground.addSubview(bookDescriptionLabel)
        viewBackground.addSubview(bookScorelabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            viewBackground.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
                        
            subImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor),
            
            bookImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            bookImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            bookImageView.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            bookImageView.heightAnchor.constraint(equalToConstant: 250),
            
            bookNamelabel.topAnchor.constraint(equalTo: bookImageView.bottomAnchor, constant: 15),
            bookNamelabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            
            bookDescriptionLabel.topAnchor.constraint(equalTo: bookNamelabel.bottomAnchor, constant: 5),
            bookDescriptionLabel.leadingAnchor.constraint(equalTo: bookNamelabel.leadingAnchor),
            bookDescriptionLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            
            bookScorelabel.topAnchor.constraint(equalTo: bookImageView.bottomAnchor, constant: 15),
            bookScorelabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
        ])
    }

}
