//
//  FiisTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class FiisTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: FiisTableViewCell.self)
    
    private lazy var screen: FiisTableViewCellScreen = {
        let view = FiisTableViewCellScreen()
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
    
    public func setupCell(data: FundosImobiliario) {
        screen.fiisTitleLabel.text = data.fiisTitle
        
        screen.fiisOneTitleLabel.text = "• \(data.fiisTopicOneTitle ?? "")"
        screen.fiisOneImageView.image = UIImage(named: data.fiisTopicOneImage ?? "")
        screen.fiisOneLabel.text = data.fiisTopicOne
        
        screen.fiisTwoTitleLabel.text = "• \(data.fiisTopicTwoTitle ?? "")"
        screen.fiisTwoLabel.text = data.fiisTopicTwo
        
        screen.fiisThreeTitleLabel.text = "• \(data.fiisTopicThreeTitle ?? "")"
        screen.fiisThreeLabel.text = data.fiisTopicThree
    }

}
