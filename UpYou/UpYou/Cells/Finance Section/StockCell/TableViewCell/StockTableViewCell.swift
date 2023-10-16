//
//  StockTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 16/10/23.
//

import UIKit

class StockTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: StockTableViewCell.self)
    
    private lazy var screen: StockTableViewCellScreen = {
        let view = StockTableViewCellScreen()
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
    
    public func setupCell(data: Stock) {
        screen.stockTitleLabel.text = data.stocksTitle
        
        screen.stockOneTitleLabel.text = "• \(data.stocksTopicOneTitle ?? "")"
        screen.stockOneImageView.image = UIImage(named: data.stocksTopicOneImage ?? "")
        screen.stockOneLabel.text = data.stocksTopicOne
        
        screen.stockTwoTitleLabel.text = "• \(data.stocksTopicTwoTitle ?? "")"
        screen.stockTwoLabel.text = data.stocksTopicTwo
        
        screen.stockThreeTitleLabel.text = "• \(data.stocksTopicThreeTitle ?? "")"
        screen.stockThreeLabel.text = data.stocksTopicThree
    }

}
