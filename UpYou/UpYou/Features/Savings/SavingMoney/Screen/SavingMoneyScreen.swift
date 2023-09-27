//
//  SavingMoneyScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

protocol SavingMoneyScreenDelegate: AnyObject {
    func tappedBackButton()
    func tappedSetAGoalButton()
    func tappedExpensesButton()
}

class SavingMoneyScreen: UIView {
    
    private weak var delegate: SavingMoneyScreenDelegate?
    
    public func delegate(delegate: SavingMoneyScreenDelegate?) {
        self.delegate = delegate
    }
    
    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
        return image
    }()
    
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
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(SavingMoneyTableViewCell.self, forCellReuseIdentifier: SavingMoneyTableViewCell.identifier)
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 20
        tableView.backgroundColor = .black.withAlphaComponent(0.6)
        tableView.separatorStyle = .none
        return tableView
    }()
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    lazy var viewMidBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    lazy var setAGoalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "set_a_goal")
        return imageView
    }()
    
    lazy var setAGoalTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Set a Goal"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var setAGoalSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Set financial goals for your future."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var setAGoalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedSetAGoalButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedSetAGoalButton() {
        delegate?.tappedSetAGoalButton()
    }
    
    lazy var expensesImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "expenses2")
        return imageView
    }()
    
    lazy var expensesTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Expenses"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var expensesSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Define your expenses in categories."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var expensesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedExpensesButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedExpensesButton() {
        delegate?.tappedExpensesButton()
    }
    
    lazy var viewBottomBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()

    
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
        addSubview(tableView)
        addSubview(viewMidBackground)
        viewMidBackground.addSubview(setAGoalImageView)
        viewMidBackground.addSubview(setAGoalTitleLabel)
        viewMidBackground.addSubview(setAGoalSubTitlelabel)
        viewMidBackground.addSubview(setAGoalButton)
        viewMidBackground.addSubview(expensesImageView)
        viewMidBackground.addSubview(expensesTitleLabel)
        viewMidBackground.addSubview(expensesSubTitlelabel)
        viewMidBackground.addSubview(expensesButton)
        addSubview(viewBottomBackground)
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
            
            tableView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            tableView.heightAnchor.constraint(equalToConstant: 135),
            
            viewMidBackground.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 40),
            viewMidBackground.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
            viewMidBackground.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
            viewMidBackground.heightAnchor.constraint(equalToConstant: 138),
            
            setAGoalImageView.topAnchor.constraint(equalTo: viewMidBackground.topAnchor, constant: 20),
            setAGoalImageView.leadingAnchor.constraint(equalTo: viewMidBackground.leadingAnchor, constant: 12),
            setAGoalImageView.heightAnchor.constraint(equalToConstant: 40),
            setAGoalImageView.widthAnchor.constraint(equalToConstant: 40),
            
            setAGoalTitleLabel.topAnchor.constraint(equalTo: setAGoalImageView.topAnchor),
            setAGoalTitleLabel.leadingAnchor.constraint(equalTo: setAGoalImageView.trailingAnchor, constant: 15),
            
            setAGoalSubTitlelabel.topAnchor.constraint(equalTo: setAGoalTitleLabel.bottomAnchor, constant: 5),
            setAGoalSubTitlelabel.leadingAnchor.constraint(equalTo: setAGoalTitleLabel.leadingAnchor),
            
            setAGoalButton.topAnchor.constraint(equalTo: setAGoalImageView.topAnchor, constant: 12),
            setAGoalButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            setAGoalButton.heightAnchor.constraint(equalToConstant: 20),
            setAGoalButton.widthAnchor.constraint(equalToConstant: 20),
            
            expensesImageView.topAnchor.constraint(equalTo: setAGoalImageView.bottomAnchor, constant: 20),
            expensesImageView.leadingAnchor.constraint(equalTo: setAGoalImageView.leadingAnchor),
            expensesImageView.heightAnchor.constraint(equalTo: setAGoalImageView.heightAnchor),
            expensesImageView.widthAnchor.constraint(equalTo: setAGoalImageView.widthAnchor),
            
            expensesTitleLabel.topAnchor.constraint(equalTo: expensesImageView.topAnchor),
            expensesTitleLabel.leadingAnchor.constraint(equalTo: expensesImageView.trailingAnchor, constant: 15),
            
            expensesSubTitlelabel.topAnchor.constraint(equalTo: expensesTitleLabel.bottomAnchor, constant: 5),
            expensesSubTitlelabel.leadingAnchor.constraint(equalTo: expensesTitleLabel.leadingAnchor),
            
            expensesButton.topAnchor.constraint(equalTo: expensesImageView.topAnchor, constant: 12),
            expensesButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            expensesButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            expensesButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
            
            viewBottomBackground.topAnchor.constraint(equalTo: viewMidBackground.bottomAnchor, constant: 40),
            viewBottomBackground.leadingAnchor.constraint(equalTo: viewMidBackground.leadingAnchor),
            viewBottomBackground.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor),
            viewBottomBackground.heightAnchor.constraint(equalToConstant: 345),
        ])
    }
    
}
