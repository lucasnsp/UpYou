//
//  DeepWorkTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class DeepWorkTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: DeepWorkTableViewCell.self)
    
    private lazy var screen: DeepWorkTableViewCellScreen = {
        let view = DeepWorkTableViewCellScreen()
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
    
    public func setupCell(data: Focus) {
        screen.focusTitleLabel.text = data.focusTitle
        screen.focusOneTitleLabel.text = "• \(data.focusTopicOneTitle ?? "")"
        screen.focusOneLabel.text = data.focusTopicOne
        screen.focusTwoTitleLabel.text = "• \(data.focusTopicTwoTitle ?? "")"
        screen.focusTwoLabel.text = data.focusTopicTwo
        screen.focusThreeTitleLabel.text = "• \(data.focusTopicThreeTitle ?? "")"
        screen.focusThreeLabel.text = data.focusTopicThree
        screen.focusFourTitleLabel.text = "• \(data.focusTopicFourTitle ?? "")"
        screen.focusFourLabel.text = data.focusTopicFour
        screen.focusFiveTitleLabel.text = "• \(data.focusTopicFiveTitle ?? "")"
        screen.focusFiveLabel.text = data.focusTopicFive
    }
}
