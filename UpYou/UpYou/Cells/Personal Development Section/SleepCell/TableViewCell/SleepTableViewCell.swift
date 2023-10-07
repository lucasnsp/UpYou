//
//  SleepTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 07/10/23.
//

import UIKit

class SleepTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: SleepTableViewCell.self)
    
    private lazy var screen: SleepTableViewCellScreen = {
        let view = SleepTableViewCellScreen()
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
    
    public func setupCell(data: Sleep) {
        screen.sleepTitleLabel.text = data.sleepTitle
        
        screen.sleepOneTitleLabel.text = "• \(data.sleepTopicOneTitle ?? "")"
        screen.sleepOneImageView.image = UIImage(named: data.sleepTopicOneImage ?? "")
        screen.sleepOneLabel.text = data.sleepTopicOne
        
        screen.sleepTwoTitleLabel.text = "• \(data.sleepTopicTwoTitle ?? "")"
        screen.sleepTwoImageView.image = UIImage(named: data.sleepTopicTwoImage ?? "")
        screen.sleepTwoLabel.text = data.sleepTopicTwo
        
        screen.sleepThreeTitleLabel.text = "• \(data.sleepTopicThreeTitle ?? "")"
        screen.sleepThreeImageView.image = UIImage(named: data.sleepTopicThreeImage ?? "")
        screen.sleepThreeLabel.text = data.sleepTopicThree
        
        screen.sleepFourTitleLabel.text = "• \(data.sleepTopicFourTitle ?? "")"
        screen.sleepFourImageView.image = UIImage(named: data.sleepTopicFourImage ?? "")
        screen.sleepFourLabel.text = data.sleepTopicFour
        
        screen.sleepFiveTitleLabel.text = "• \(data.sleepTopicFiveTitle ?? "")"
        screen.sleepFiveImageView.image = UIImage(named: data.sleepTopicFiveImage ?? "")
        screen.sleepFiveLabel.text = data.sleepTopicFive
        
        screen.sleepSixTitleLabel.text = "• \(data.sleepTopicSixTitle ?? "")"
        screen.sleepSixImageView.image = UIImage(named: data.sleepTopicSixImage ?? "")
        screen.sleepSixLabel.text = data.sleepTopicSix
    }

}
