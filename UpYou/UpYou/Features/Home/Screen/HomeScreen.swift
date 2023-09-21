//
//  HomeScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

protocol HomeScreenDelegate: AnyObject {
    func tappedAddIncomeButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenDelegate?
    
    public func delegate(delegate: HomeScreenDelegate?) {
        self.delegate = delegate
    }

    
    lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Home"
        label.font = UIFont.boldSystemFont(ofSize: 27)
        return label
    }()
    
    lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 14
        return view
    }()
    
    lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Balance"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    lazy var addIncomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Add Income", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(tappedAddIncomeButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedAddIncomeButton() {
        delegate?.tappedAddIncomeButton()
    }
    
    lazy var incomeTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "R$ 0.00"
        tf.textColor = UIColor.black
        tf.font = UIFont.boldSystemFont(ofSize: 44)
        tf.keyboardType = .decimalPad
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
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
    
    public func configPersonalTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white.withAlphaComponent(0.93)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(homeLabel)
        addSubview(viewBackground)
        viewBackground.addSubview(balanceLabel)
        viewBackground.addSubview(addIncomeButton)
        viewBackground.addSubview(incomeTextField)
        addSubview(tableView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            homeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            homeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            viewBackground.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 30),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            viewBackground.heightAnchor.constraint(equalToConstant: 240),
            
            incomeTextField.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 70),
            incomeTextField.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 17),
            incomeTextField.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -10),
            
            balanceLabel.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 15),
            balanceLabel.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 17),
            
            addIncomeButton.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: -20),
            addIncomeButton.heightAnchor.constraint(equalToConstant: 50),
            addIncomeButton.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 40),
            addIncomeButton.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -40),
            
            tableView.topAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: 50),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }

}
