//
//  HabitsTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

class HabitsTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: HabitsTableViewCell.self)
    
    private lazy var screen: HabitsTableViewCellScreen = {
        let view = HabitsTableViewCellScreen()
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
    
    public func setupCell(data: Habit) {
        screen.habitsTitleLabel.text = data.habitsTitle
        
        screen.habitsOneTitleLabel.text = "• \(data.habitsTopicOneTitle ?? "")"
        screen.habitsOneImageView.image = UIImage(named: data.habitsTopicOneImage ?? "")
        screen.habitsOneLabel.text = data.habitsTopicOne
        
        screen.habitsTwoTitleLabel.text = "• \(data.habitsTopicTwoTitle ?? "")"
        screen.habitsTwoImageView.image = UIImage(named: data.habitsTopicTwoImage ?? "")
        screen.habitsTwoLabel.text = data.habitsTopicTwo
        
        screen.habitsThreeTitleLabel.text = "• \(data.habitsTopicThreeTitle ?? "")"
        screen.habitsThreeImageView.image = UIImage(named: data.habitsTopicThreeImage ?? "")
        screen.habitsThreeLabel.text = data.habitsTopicThree
        
        screen.habitsFourTitleLabel.text = "• \(data.habitsTopicFourTitle ?? "")"
        screen.habitsFourImageView.image = UIImage(named: data.habitsTopicFourImage ?? "")
        screen.habitsFourLabel.text = data.habitsTopicFour
        
        screen.habitsFiveTitleLabel.text = "• \(data.habitsTopicFiveTitle ?? "")"
        screen.habitsFiveImageView.image = UIImage(named: data.habitsTopicFiveImage ?? "")
        screen.habitsFiveLabel.text = data.habitsTopicFive
        
        screen.habitsSixTitleLabel.text = "• \(data.habitsTopicSixTitle ?? "")"
        screen.habitsSixImageView.image = UIImage(named: data.habitsTopicSixImage ?? "")
        screen.habitsSixLabel.text = data.habitsTopicSix
        
        screen.habitsSevenTitleLabel.text = "• \(data.habitsTopicSevenTitle ?? "")"
        screen.habitsSevenImageView.image = UIImage(named: data.habitsTopicSevenImage ?? "")
        screen.habitsSevenLabel.text = data.habitsTopicSeven
        
        screen.habitsEightTitleLabel.text = "• \(data.habitsTopicEightTitle ?? "")"
        screen.habitsEightImageView.image = UIImage(named: data.habitsTopicEightImage ?? "")
        screen.habitsEightLabel.text = data.habitsTopicEight
        
        screen.habitsNineTitleLabel.text = "• \(data.habitsTopicNineTitle ?? "")"
        screen.habitsNineImageView.image = UIImage(named: data.habitsTopicNineImage ?? "")
        screen.habitsNineLabel.text = data.habitsTopicNine
    }

}
