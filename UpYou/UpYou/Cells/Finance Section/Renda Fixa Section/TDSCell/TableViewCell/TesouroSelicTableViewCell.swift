//
//  TesouroSelicTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroSelicTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: TesouroSelicTableViewCell.self)
    
    private lazy var screen: TesouroSelicTableViewCellScreen = {
        let view = TesouroSelicTableViewCellScreen()
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
    
    public func setupCell(data: TesouroSelic) {
        screen.tdsTitleLabel.text = data.tdsTitle
        
        screen.tdsOneTitleLabel.text = "• \(data.tdsTopicOneTitle ?? "")"
        screen.tdsOneImageView.image = UIImage(named: data.tdsTopicOneImage ?? "")
        screen.tdsOneLabel.text = data.tdsTopicOne
        
        screen.tdsTwoTitleLabel.text = "• \(data.tdsTopicTwoTitle ?? "")"
        screen.tdsTwoLabel.text = data.tdsTopicTwo
        
        screen.tdsThreeTitleLabel.text = "• \(data.tdsTopicThreeTitle ?? "")"
        screen.tdsThreeLabel.text = data.tdsTopicThree
    }

}
