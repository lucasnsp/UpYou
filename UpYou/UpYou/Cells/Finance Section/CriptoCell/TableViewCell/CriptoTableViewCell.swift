//
//  CriptoTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class CriptoTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: CriptoTableViewCell.self)
    
    private lazy var screen: CriptoTableViewCellScreen = {
        let view = CriptoTableViewCellScreen()
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
    
    public func setupCell(data: CriptoMoeda) {
        screen.criptoTitleLabel.text = data.criptoTitle
        
        screen.criptoOneTitleLabel.text = "• \(data.criptoTopicOneTitle ?? "")"
        screen.criptoOneImageView.image = UIImage(named: data.criptoTopicOneImage ?? "")
        screen.criptoOneLabel.text = data.criptoTopicOne
        
        screen.criptoTwoTitleLabel.text = "• \(data.criptoTopicTwoTitle ?? "")"
        screen.criptoTwoLabel.text = data.criptoTopicTwo
        
        screen.criptoThreeTitleLabel.text = "• \(data.criptoTopicThreeTitle ?? "")"
        screen.criptoThreeLabel.text = data.criptoTopicThree
    }
}
