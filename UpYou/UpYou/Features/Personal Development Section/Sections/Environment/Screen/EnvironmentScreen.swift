//
//  EnvironmentScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

protocol EnvironmentScreenDelegate: AnyObject {
    func tappedBackButton()
}

class EnvironmentScreen: UIView {
    
    private weak var delegate: EnvironmentScreenDelegate?
    
    public func delegate(delegate: EnvironmentScreenDelegate?) {
        self.delegate = delegate
    }

    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .gray
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedBackButton() {
        delegate?.tappedBackButton()
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Ambiente"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(EnvironmentTableViewCell.self, forCellReuseIdentifier: EnvironmentTableViewCell.identifier)
        tableView.backgroundColor = .black.withAlphaComponent(0.6)
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        return tableView
    }()
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(subImageView)
        addSubview(backButton)
        addSubview(titleLabel)
        addSubview(tableView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

}
