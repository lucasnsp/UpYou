//
//  EnvironmentTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class EnvironmentTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: EnvironmentTableViewCell.self)
    
    private lazy var screen: EnvironmentTableViewCellScreen = {
        let view = EnvironmentTableViewCellScreen()
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
    
    public func setupCell(data: Environment) {
        screen.environmentTitleLabel.text = data.environmentTitle
        
        screen.environmentOneTitleLabel.text = "• \(data.environmentTopicOneTitle ?? "")"
        screen.environmentOneImageView.image = UIImage(named: data.environmentTopicOneImage ?? "")
        screen.environmentOneLabel.text = data.environmentTopicOne
        
        screen.environmentTwoTitleLabel.text = "• \(data.environmentTopicTwoTitle ?? "")"
        screen.environmentTwoImageView.image = UIImage(named: data.environmentTopicTwoImage ?? "")
        screen.environmentTwoLabel.text = data.environmentTopicTwo
        
        screen.environmentThreeTitleLabel.text = "• \(data.environmentTopicThreeTitle ?? "")"
        screen.environmentThreeImageView.image = UIImage(named: data.environmentTopicThreeImage ?? "")
        screen.environmentThreeLabel.text = data.environmentTopicThree
        
        screen.environmentFourTitleLabel.text = "• \(data.environmentTopicFourTitle ?? "")"
        screen.environmentFourImageView.image = UIImage(named: data.environmentTopicFourImage ?? "")
        screen.environmentFourLabel.text = data.environmentTopicFour
        
        screen.environmentFiveTitleLabel.text = "• \(data.environmentTopicFiveTitle ?? "")"
        screen.environmentFiveImageView.image = UIImage(named: data.environmentTopicFiveImage ?? "")
        screen.environmentFiveLabel.text = data.environmentTopicFive
        
        screen.environmentSixTitleLabel.text = "• \(data.environmentTopicSixTitle ?? "")"
        screen.environmentSixImageView.image = UIImage(named: data.environmentTopicSixImage ?? "")
        screen.environmentSixLabel.text = data.environmentTopicSix
    }
}
