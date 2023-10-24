//
//  CustomInfoBox.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 24/10/23.
//

import UIKit

class CustomInfoBox: UIView {
    
    private lazy var infoBox: UIView = {
         let view = UIView()
         view.translatesAutoresizingMaskIntoConstraints = false
         view.backgroundColor = .black
         view.layer.cornerRadius = 22
         return view
     }()
     
    private lazy var infoImageBox: UIImageView = {
         let image = UIImageView()
         image.translatesAutoresizingMaskIntoConstraints = false
         image.clipsToBounds = true
         image.layer.cornerRadius = 22
         return image
     }()
     
     private lazy var goalLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .white
         label.font = UIFont.systemFont(ofSize: 14)
         return label
     }()
     
     private lazy var valueLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .white
         label.font = UIFont.systemFont(ofSize: 14)
         return label
     }()
     
     private lazy var timeLabel: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .white
         label.font = UIFont.systemFont(ofSize: 14)
         return label
     }()
    
    init(image: UIImage?, title: String, value$: String, time$: String) {
        super.init(frame: .zero)
        
        infoImageBox.image = image
        goalLabel.text = title
        valueLabel.text = value$
        timeLabel.text = time$
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(infoBox)
        infoBox.addSubview(infoImageBox)
        infoBox.addSubview(goalLabel)
        infoBox.addSubview(valueLabel)
        infoBox.addSubview(timeLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            infoBox.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            infoBox.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            infoBox.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            infoBox.heightAnchor.constraint(equalToConstant: 120),
            
            infoImageBox.centerYAnchor.constraint(equalTo: infoBox.centerYAnchor),
            infoImageBox.leadingAnchor.constraint(equalTo: infoBox.leadingAnchor, constant: 12),
            infoImageBox.widthAnchor.constraint(equalToConstant: 60),
            infoImageBox.heightAnchor.constraint(equalToConstant: 60),
            
            goalLabel.topAnchor.constraint(equalTo: infoImageBox.topAnchor),
            goalLabel.leadingAnchor.constraint(equalTo: infoImageBox.trailingAnchor, constant: 5),
            
            valueLabel.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 5),
            valueLabel.leadingAnchor.constraint(equalTo: goalLabel.leadingAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            timeLabel.trailingAnchor.constraint(equalTo: infoBox.trailingAnchor, constant: -12),
        ])
    }
}
