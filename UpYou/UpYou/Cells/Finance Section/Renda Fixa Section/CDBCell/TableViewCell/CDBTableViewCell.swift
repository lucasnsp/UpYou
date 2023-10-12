//
//  CDBTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class CDBTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: CDBTableViewCell.self)
    
    private lazy var screen: CDBTableViewCellScreen = {
        let view = CDBTableViewCellScreen()
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
    
    public func setupCell(data: Cdb) {
        screen.cdbTitleLabel.text = data.cdbTitle
        
        screen.cdbOneTitleLabel.text = "• \(data.cdbTopicOneTitle ?? "")"
        screen.cdbOneImageView.image = UIImage(named: data.cdbTopicOneImage ?? "")
        screen.cdbOneLabel.text = data.cdbTopicOne
        
        screen.cdbTwoTitleLabel.text = "• \(data.cdbTopicTwoTitle ?? "")"
        screen.cdbTwoLabel.text = data.cdbTopicTwo
        
        screen.cdbThreeTitleLabel.text = "• \(data.cdbTopicThreeTitle ?? "")"
        screen.cdbThreeLabel.text = data.cdbTopicThree
    }

}
