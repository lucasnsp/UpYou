//
//  GoldenRulesTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

class GoldenRulesTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: GoldenRulesTableViewCell.self)
    
    private lazy var screen: GoldenRulesTableViewCellScreen = {
        let view = GoldenRulesTableViewCellScreen()
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
    
    public func setupCell(data: Rule) {
        screen.ruleTitleLabel.text = data.rulesTitle
        
        screen.ruleOneTitleLabel.text = "• \(data.rulesTopicOneTitle ?? "")"
        screen.ruleOneImageView.image = UIImage(named: data.rulesTopicOneImage ?? "")
        screen.ruleOneLabel.text = data.rulesTopicOne
        
        screen.ruleTwoTitleLabel.text = "• \(data.rulesTopicTwoTitle ?? "")"
        screen.ruleTwoImageView.image = UIImage(named: data.rulesTopicTwoImage ?? "")
        screen.ruleTwoLabel.text = data.rulesTopicTwo
        
        screen.ruleThreeTitleLabel.text = "• \(data.rulesTopicThreeTitle ?? "")"
        screen.ruleThreeImageView.image = UIImage(named: data.rulesTopicThreeImage ?? "")
        screen.ruleThreeLabel.text = data.rulesTopicThree
        
        screen.ruleFourTitleLabel.text = "• \(data.rulesTopicFourTitle ?? "")"
        screen.ruleFourImageView.image = UIImage(named: data.rulesTopicFourImage ?? "")
        screen.ruleFourLabel.text = data.rulesTopicFour
        
        screen.ruleFiveTitleLabel.text = "• \(data.rulesTopicFiveTitle ?? "")"
        screen.ruleFiveImageView.image = UIImage(named: data.rulesTopicFiveImage ?? "")
        screen.ruleFiveLabel.text = data.rulesTopicFive
    }
}
