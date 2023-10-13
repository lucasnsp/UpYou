//
//  TesouroDiretoTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import UIKit

class TesouroDiretoTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: TesouroDiretoTableViewCell.self)
    
    private lazy var screen: TesouroDiretoTableViewCellScreen = {
        let view = TesouroDiretoTableViewCellScreen()
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
    
    public func setupCell(data: TesouroDireto) {
        screen.tdTitleLabel.text = data.tdTitle
        
        screen.tdOneTitleLabel.text = "• \(data.tdTopicOneTitle ?? "")"
        screen.tdOneImageView.image = UIImage(named: data.tdTopicOneImage ?? "")
        screen.tdOneLabel.text = data.tdTopicOne
        
        screen.tdTwoTitleLabel.text = "• \(data.tdTopicTwoTitle ?? "")"
        screen.tdTwoLabel.text = data.tdTopicTwo
        
        screen.tdThreeTitleLabel.text = "• \(data.tdTopicThreeTitle ?? "")"
        screen.tdThreeLabel.text = data.tdTopicThree
    }

}
