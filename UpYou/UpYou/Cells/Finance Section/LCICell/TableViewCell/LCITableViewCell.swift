//
//  LCITableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class LCITableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: LCITableViewCell.self)
    
    private lazy var screen: LCITableViewCellScreen = {
        let view = LCITableViewCellScreen()
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
    
    public func setupCell(data: Lci) {
        screen.lciTitleLabel.text = data.lciTitle
        
        screen.lciOneTitleLabel.text = "• \(data.lciTopicOneTitle ?? "")"
        screen.lciOneImageView.image = UIImage(named: data.lciTopicOneImage ?? "")
        screen.lciOneLabel.text = data.lciTopicOne
        
        screen.lciTwoTitleLabel.text = "• \(data.lciTopicTwoTitle ?? "")"
        screen.lciTwoLabel.text = data.lciTopicTwo
        
        screen.lciThreeTitleLabel.text = "• \(data.lciTopicThreeTitle ?? "")"
        screen.lciThreeLabel.text = data.lciTopicThree
    }
}
