//
//  HomeScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Home"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .white
        collectionView.clipsToBounds = true
        collectionView.layer.cornerRadius = 14
        collectionView.register(BalanceCollectionViewCell.self, forCellWithReuseIdentifier: BalanceCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 14
        // TO DO: Register
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        return tableView
    }()
    
    
    public func configCollectionViewProtocols(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    public func configPersonalTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white.withAlphaComponent(0.97)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(homeLabel)
        addSubview(collectionView)
        addSubview(tableView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            homeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            homeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            collectionView.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 30),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 240),
            
            tableView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 50),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }

}
