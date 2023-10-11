//
//  LCATableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class LCATableViewCell: UITableViewCell {

    static let identifier: String = String(describing: LCATableViewCell.self)
    
    private lazy var screen: LCATableViewCellScreen = {
        let view = LCATableViewCellScreen()
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
    
    public func setupCell(data: Lca) {
        screen.lcaTitleLabel.text = data.lcaTitle
        
        screen.lcaOneTitleLabel.text = "• \(data.lcaTopicOneTitle ?? "")"
        screen.lcaOneImageView.image = UIImage(named: data.lcaTopicOneImage ?? "")
        screen.lcaOneLabel.text = data.lcaTopicOne
        
        screen.lcaTwoTitleLabel.text = "• \(data.lcaTopicTwoTitle ?? "")"
        screen.lcaTwoLabel.text = data.lcaTopicTwo
        
        screen.lcaThreeTitleLabel.text = "• \(data.lcaTopicThreeTitle ?? "")"
        screen.lcaThreeLabel.text = data.lcaTopicThree
    }

}
