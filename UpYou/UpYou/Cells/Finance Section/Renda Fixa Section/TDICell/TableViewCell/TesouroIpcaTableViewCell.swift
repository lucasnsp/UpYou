//
//  TesouroIpcaTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroIpcaTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: TesouroIpcaTableViewCell.self)
    
    private lazy var screen: TesouroIpcaTableViewCellScreen = {
        let view = TesouroIpcaTableViewCellScreen()
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
    
    public func setupCell(data: TesouroIpca) {
        screen.tdiTitleLabel.text = data.tdiTitle
        
        screen.tdiOneTitleLabel.text = "• \(data.tdiTopicOneTitle ?? "")"
        screen.tdiOneImageView.image = UIImage(named: data.tdiTopicOneImage ?? "")
        screen.tdiOneLabel.text = data.tdiTopicOne
        
        screen.tdiTwoTitleLabel.text = "• \(data.tdiTopicTwoTitle ?? "")"
        screen.tdiTwoLabel.text = data.tdiTopicTwo
        
        screen.tdiThreeTitleLabel.text = "• \(data.tdiTopicThreeTitle ?? "")"
        screen.tdiThreeLabel.text = data.tdiTopicThree
    }

}
