//
//  SavingMoneyVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

class SavingMoneyVC: UIViewController {
    
    var viewModel = SavingMoneyViewModel()
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
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
    
    private lazy var viewBottomBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var stackEducational: UIStackView = {
        let variable = UIStackView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.distribution = .fillEqually
        variable.axis = .vertical
        variable.spacing = 0.5
        return variable
    }()
    
    private lazy var stocksComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.stocksIcon, title: "Ações", subTitle: "Conheça mais sobre ações.", target: self, action: #selector(tappedStocksButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedStocksButton() {
        let vc: StocksVC = StocksVC(viewModel: StocksViewModel())
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var cryptoComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.cryptoIcon, title: "CriptoMoedas", subTitle: "Conheça o futuro agora.", target: self, action: #selector(tappedCryptoButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedCryptoButton() {
        let vc: CriptoVC = CriptoVC(viewModel: CriptoViewModel())
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var fiisComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.fiisIcon, title: "Fundos Imobiliários", subTitle: "Crie um patrimônio diferenciado.", target: self, action: #selector(tappedFIIsButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedFIIsButton() {
        let vc: FiisVC = FiisVC(viewModel: FiisViewModel())
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var goldenRulesComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.goldenrulesIcon, title: "As Leis de Ouro da Babilônia", subTitle: "Dicas que mudam vidas.", target: self, action: #selector(tappedGoldenRulesButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedGoldenRulesButton() {
        let vc: GoldenRulesVC = GoldenRulesVC(viewModel: GoldenRulesViewModel())
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var fixedIncomeComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.fixedIncomeIcon, title: "Renda Fixa", subTitle: "Entenda o que é e seus tipos.", target: self, action: #selector(tappedFixedIncomeButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedFixedIncomeButton() {
        let vc: FixedIncomeVC = FixedIncomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetchAllResquest()
        addViews()
        configConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(tableView)
        view.addSubview(viewBottomBackground)
        viewBottomBackground.addSubview(stackEducational)
        stackEducational.addArrangedSubview(stocksComponent)
        stackEducational.addArrangedSubview(cryptoComponent)
        stackEducational.addArrangedSubview(fiisComponent)
        stackEducational.addArrangedSubview(goldenRulesComponent)
        stackEducational.addArrangedSubview(fixedIncomeComponent)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo:view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            tableView.heightAnchor.constraint(equalToConstant: 145),
            
            viewBottomBackground.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 40),
            viewBottomBackground.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
            viewBottomBackground.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
            viewBottomBackground.heightAnchor.constraint(equalToConstant: 320),
            
            stackEducational.topAnchor.constraint(equalTo: viewBottomBackground.topAnchor),
            stackEducational.leadingAnchor.constraint(equalTo: viewBottomBackground.leadingAnchor),
            stackEducational.trailingAnchor.constraint(equalTo: viewBottomBackground.trailingAnchor),
            stackEducational.bottomAnchor.constraint(equalTo: viewBottomBackground.bottomAnchor, constant: -15),
        ])
    }
}

extension SavingMoneyVC: SavingMoneyViewModelDelegate {
    func error(message: String) {
        let alertController: UIAlertController = UIAlertController(title: "Sorry, we had a problem", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
    
    func success() {
        DispatchQueue.main.async { [ weak self ] in
            guard let self else { return }
            self.configTableViewProtocols(delegate: self, dataSource: self)
            self.tableView.reloadData()
        }
    }
}

extension SavingMoneyVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SavingMoneyTableViewCell.identifier, for: indexPath) as? SavingMoneyTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentMoneyPhrases(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModel.heightForRowAt
    }
}
