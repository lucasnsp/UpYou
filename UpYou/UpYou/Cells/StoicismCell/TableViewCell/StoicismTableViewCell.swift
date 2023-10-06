//
//  StoicismTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

class StoicismTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: StoicismTableViewCell.self)
    
    private lazy var screen: StoicismTableViewCellScreen = {
        let view = StoicismTableViewCellScreen()
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
    
    public func setupCell(data: Stoicism) {
        screen.stoicismTitleLabel.text = data.stoicismTitle
        
        screen.stoicismOneTitleLabel.text = "• \(data.stoicismTopicOneTitle ?? "")"
        screen.stoicismOneImageView.image = UIImage(named: data.stoicismTopicOneImage ?? "")
        screen.stoicismOneLabel.text = data.stoicismTopicOne
        
        screen.stoicismTwoTitleLabel.text = "• \(data.stoicismTopicTwoTitle ?? "")"
        screen.stoicismTwoImageView.image = UIImage(named: data.stoicismTopicTwoImage ?? "")
        screen.stoicismTwoLabel.text = data.stoicismTopicTwo
        
        screen.stoicismThreeTitleLabel.text = "• \(data.stoicismTopicThreeTitle ?? "")"
        screen.stoicismThreeImageView.image = UIImage(named: data.stoicismTopicThreeImage ?? "")
        screen.stoicismThreeLabel.text = data.stoicismTopicThree
        
        screen.stoicismFourTitleLabel.text = "• \(data.stoicismTopicFourTitle ?? "")"
        screen.stoicismFourImageView.image = UIImage(named: data.stoicismTopicFourImage ?? "")
        screen.stoicismFourLabel.text = data.stoicismTopicFour
        
        screen.stoicismFiveTitleLabel.text = "• \(data.stoicismTopicFiveTitle ?? "")"
        screen.stoicismFiveImageView.image = UIImage(named: data.stoicismTopicFiveImage ?? "")
        screen.stoicismFiveLabel.text = data.stoicismTopicFive
    }

}
