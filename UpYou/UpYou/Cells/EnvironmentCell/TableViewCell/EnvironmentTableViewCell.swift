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
        screen.environmentOneLabel.text = data.environmentTopicOne
        
        screen.environmentTwoTitleLabel.text = "• \(data.environmentTopicTwoTitle ?? "")"
        screen.environmentTwoLabel.text = data.environmentTopicTwo
        
        screen.environmentThreeTitleLabel.text = "• \(data.environmentTopicThreeTitle ?? "")"
        screen.environmentThreeLabel.text = data.environmentTopicThree
        
        screen.environmentFourTitleLabel.text = "• \(data.environmentTopicFourTitle ?? "")"
        screen.environmentFourLabel.text = data.environmentTopicFour
        
        screen.environmentFiveTitleLabel.text = "• \(data.environmentTopicFiveTitle ?? "")"
        screen.environmentFiveLabel.text = data.environmentTopicFive
        
        screen.environmentSixTitleLabel.text = "• \(data.environmentTopicSixTitle ?? "")"
        screen.environmentSixLabel.text = data.environmentTopicSix
    }
}
