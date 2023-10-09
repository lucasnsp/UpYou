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
    func tappedCryptoButton()
    func tappedGoldenRulesButton()
    func tappedFllsButton()
    func tappedStocksButton()
    func tappedRendaFixaButton()
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
        label.text = "Metas"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var setAGoalSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Defina objetivos financeiros."
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
        label.text = "Despesas"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var expensesSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Organize as suas despesas."
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
    
    lazy var cryptoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "crypto")
        return imageView
    }()
    
    lazy var cryptoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "CriptoMoedas"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var cryptoSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Conheça o futuro agora."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var cryptoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedCryptoButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedCryptoButton() {
        delegate?.tappedCryptoButton()
    }
    
    lazy var goldenRulesImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "goldenrules1")
        return imageView
    }()
    
    lazy var goldenRulesTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "As Leis de Ouro da Babilônia"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var goldenRulesSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Dicas que mudam vidas."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var goldenRulesButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedGoldenRulesButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedGoldenRulesButton() {
        delegate?.tappedGoldenRulesButton()
    }
    
    lazy var fllsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "flls")
        return imageView
    }()
    
    lazy var fllsTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Fundos Imobiliários"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var fllsSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Crie um patrimônio através de imóveis."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var fllsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedFllsButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedFllsButton() {
        delegate?.tappedFllsButton()
    }
    
    lazy var stocksImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "stocks2")
        return imageView
    }()
    
    lazy var stocksTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Ações"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var stocksSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Conheça mais sobre ações."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var stocksButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedStocksButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedStocksButton() {
        delegate?.tappedStocksButton()
    }
    
    lazy var fixedIncomeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "fixedIncome")
        return imageView
    }()
    
    lazy var fixedIncomeTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Renda Fixa"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var fixedIncomeSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Entenda o que é e seus tipos."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var fixedIncomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedRendaFixaButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedRendaFixaButton() {
        delegate?.tappedRendaFixaButton()
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
        viewBottomBackground.addSubview(cryptoImageView)
        viewBottomBackground.addSubview(cryptoTitleLabel)
        viewBottomBackground.addSubview(cryptoSubTitlelabel)
        viewBottomBackground.addSubview(cryptoButton)
        viewBottomBackground.addSubview(goldenRulesImageView)
        viewBottomBackground.addSubview(goldenRulesTitleLabel)
        viewBottomBackground.addSubview(goldenRulesSubTitlelabel)
        viewBottomBackground.addSubview(goldenRulesButton)
        viewBottomBackground.addSubview(fllsImageView)
        viewBottomBackground.addSubview(fllsTitleLabel)
        viewBottomBackground.addSubview(fllsSubTitlelabel)
        viewBottomBackground.addSubview(fllsButton)
        viewBottomBackground.addSubview(stocksImageView)
        viewBottomBackground.addSubview(stocksTitleLabel)
        viewBottomBackground.addSubview(stocksSubTitlelabel)
        viewBottomBackground.addSubview(stocksButton)
        viewBottomBackground.addSubview(fixedIncomeImageView)
        viewBottomBackground.addSubview(fixedIncomeTitleLabel)
        viewBottomBackground.addSubview(fixedIncomeSubTitlelabel)
        viewBottomBackground.addSubview(fixedIncomeButton)
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
            tableView.heightAnchor.constraint(equalToConstant: 145),
            
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
            viewBottomBackground.heightAnchor.constraint(equalToConstant: 320),
            
            stocksImageView.topAnchor.constraint(equalTo: viewBottomBackground.topAnchor, constant: 20),
            stocksImageView.leadingAnchor.constraint(equalTo: viewBottomBackground.leadingAnchor, constant: 12),
            stocksImageView.heightAnchor.constraint(equalToConstant: 40),
            stocksImageView.widthAnchor.constraint(equalToConstant: 40),
            
            stocksTitleLabel.topAnchor.constraint(equalTo: stocksImageView.topAnchor),
            stocksTitleLabel.leadingAnchor.constraint(equalTo: stocksImageView.trailingAnchor, constant: 15),
            
            stocksSubTitlelabel.topAnchor.constraint(equalTo: stocksTitleLabel.bottomAnchor, constant: 5),
            stocksSubTitlelabel.leadingAnchor.constraint(equalTo: stocksTitleLabel.leadingAnchor),
            
            stocksButton.topAnchor.constraint(equalTo: stocksImageView.topAnchor, constant: 12),
            stocksButton.trailingAnchor.constraint(equalTo: viewBottomBackground.trailingAnchor, constant: -12),
            stocksButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            stocksButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
            
            cryptoImageView.topAnchor.constraint(equalTo: stocksImageView.bottomAnchor, constant: 20),
            cryptoImageView.leadingAnchor.constraint(equalTo: viewBottomBackground.leadingAnchor, constant: 12),
            cryptoImageView.heightAnchor.constraint(equalToConstant: 40),
            cryptoImageView.widthAnchor.constraint(equalToConstant: 40),
            
            cryptoTitleLabel.topAnchor.constraint(equalTo: cryptoImageView.topAnchor),
            cryptoTitleLabel.leadingAnchor.constraint(equalTo: cryptoImageView.trailingAnchor, constant: 15),
            
            cryptoSubTitlelabel.topAnchor.constraint(equalTo: cryptoTitleLabel.bottomAnchor, constant: 5),
            cryptoSubTitlelabel.leadingAnchor.constraint(equalTo: cryptoTitleLabel.leadingAnchor),
            
            cryptoButton.topAnchor.constraint(equalTo: cryptoImageView.topAnchor, constant: 12),
            cryptoButton.trailingAnchor.constraint(equalTo: viewBottomBackground.trailingAnchor, constant: -12),
            cryptoButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            cryptoButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
            
            fllsImageView.topAnchor.constraint(equalTo: cryptoImageView.bottomAnchor, constant: 20),
            fllsImageView.leadingAnchor.constraint(equalTo: cryptoImageView.leadingAnchor),
            fllsImageView.heightAnchor.constraint(equalToConstant: 40),
            fllsImageView.widthAnchor.constraint(equalToConstant: 40),
            
            fllsTitleLabel.topAnchor.constraint(equalTo: fllsImageView.topAnchor),
            fllsTitleLabel.leadingAnchor.constraint(equalTo: fllsImageView.trailingAnchor, constant: 15),
            
            fllsSubTitlelabel.topAnchor.constraint(equalTo: fllsTitleLabel.bottomAnchor, constant: 5),
            fllsSubTitlelabel.leadingAnchor.constraint(equalTo: fllsTitleLabel.leadingAnchor),
            
            fllsButton.topAnchor.constraint(equalTo: fllsImageView.topAnchor, constant: 12),
            fllsButton.trailingAnchor.constraint(equalTo: cryptoButton.trailingAnchor),
            fllsButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            fllsButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
            
            goldenRulesImageView.topAnchor.constraint(equalTo: fllsImageView.bottomAnchor, constant: 20),
            goldenRulesImageView.leadingAnchor.constraint(equalTo: cryptoImageView.leadingAnchor),
            goldenRulesImageView.heightAnchor.constraint(equalToConstant: 40),
            goldenRulesImageView.widthAnchor.constraint(equalToConstant: 40),
            
            goldenRulesTitleLabel.topAnchor.constraint(equalTo: goldenRulesImageView.topAnchor),
            goldenRulesTitleLabel.leadingAnchor.constraint(equalTo: goldenRulesImageView.trailingAnchor, constant: 15),
            
            goldenRulesSubTitlelabel.topAnchor.constraint(equalTo: goldenRulesTitleLabel.bottomAnchor, constant: 5),
            goldenRulesSubTitlelabel.leadingAnchor.constraint(equalTo: goldenRulesTitleLabel.leadingAnchor),
            
            goldenRulesButton.topAnchor.constraint(equalTo: goldenRulesImageView.topAnchor, constant: 12),
            goldenRulesButton.trailingAnchor.constraint(equalTo: cryptoButton.trailingAnchor),
            goldenRulesButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            goldenRulesButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
            
            fixedIncomeImageView.topAnchor.constraint(equalTo: goldenRulesImageView.bottomAnchor, constant: 20),
            fixedIncomeImageView.leadingAnchor.constraint(equalTo: cryptoImageView.leadingAnchor),
            fixedIncomeImageView.heightAnchor.constraint(equalToConstant: 40),
            fixedIncomeImageView.widthAnchor.constraint(equalToConstant: 40),

            fixedIncomeTitleLabel.topAnchor.constraint(equalTo: fixedIncomeImageView.topAnchor),
            fixedIncomeTitleLabel.leadingAnchor.constraint(equalTo: fixedIncomeImageView.trailingAnchor, constant: 15),

            fixedIncomeSubTitlelabel.topAnchor.constraint(equalTo: fixedIncomeTitleLabel.bottomAnchor, constant: 5),
            fixedIncomeSubTitlelabel.leadingAnchor.constraint(equalTo: fixedIncomeTitleLabel.leadingAnchor),

            fixedIncomeButton.topAnchor.constraint(equalTo: fixedIncomeImageView.topAnchor, constant: 12),
            fixedIncomeButton.trailingAnchor.constraint(equalTo: cryptoButton.trailingAnchor),
            fixedIncomeButton.heightAnchor.constraint(equalTo: setAGoalButton.heightAnchor),
            fixedIncomeButton.widthAnchor.constraint(equalTo: setAGoalButton.widthAnchor),
        ])
    }
    
}