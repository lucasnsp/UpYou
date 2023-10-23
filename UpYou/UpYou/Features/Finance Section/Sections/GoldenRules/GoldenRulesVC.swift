//
//  GoldenRulesVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

class GoldenRulesVC: UIViewController {
    
    var viewModel: GoldenRulesViewModel = GoldenRulesViewModel()
    
    init(viewModel: GoldenRulesViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .gray
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Leis do Ouro"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(GoldenRulesTableViewCell.self, forCellReuseIdentifier: GoldenRulesTableViewCell.identifier)
        tableView.backgroundColor = .black.withAlphaComponent(0.6)
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        return tableView
    }()
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetchAllRequest()
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(backButton)
        view.addSubview(titleLabel)
        view.addSubview(tableView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}


extension GoldenRulesVC: GoldenRulesViewModelDelegate {
    func success() {
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            self.configTableViewProtocols(delegate: self, dataSource: self)
            self.tableView.reloadData()
        }
    }
    
    func error() {
        print(#function)
    }
}

extension GoldenRulesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GoldenRulesTableViewCell.identifier, for: indexPath) as? GoldenRulesTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentFocus(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
