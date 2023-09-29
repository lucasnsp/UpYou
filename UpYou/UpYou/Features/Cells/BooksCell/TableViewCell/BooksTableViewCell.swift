//
//  BooksTableViewCell.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: BooksTableViewCell.self)
    
    private lazy var screen: BooksTableViewCellScreen = {
        let view = BooksTableViewCellScreen()
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
    
    public func setupCell(data: Book) {
        screen.bookImageView.image = UIImage(named: data.bookImage ?? "")
        screen.bookNamelabel.text = data.bookName
        screen.bookDescriptionLabel.text = data.bookDescription
        screen.bookScorelabel.text = "\(data.bookScore ?? "") ⭐️"
    }

}
