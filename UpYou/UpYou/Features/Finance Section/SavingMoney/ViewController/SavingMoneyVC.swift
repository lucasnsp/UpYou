//
//  SavingMoneyVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

class SavingMoneyVC: UIViewController {
    
    var screen: SavingMoneyScreen?
    var viewModel = SavingMoneyViewModel()
    
    override func loadView() {
        screen = SavingMoneyScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        viewModel.fetchAllResquest()
    }

}

extension SavingMoneyVC: SavingMoneyViewModelDelegate {
    func success() {
        DispatchQueue.main.async {
            self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
            self.screen?.tableView.reloadData()
        }
    }
    
    func error() {
        print(#function)
    }
    
    
}

extension SavingMoneyVC: SavingMoneyScreenDelegate {
    func tappedRendaFixaButton() {
        print(#function)
    }
    
    func tappedFllsButton() {
        print(#function)
    }
    
    func tappedStocksButton() {
        print(#function)
    }
    
    func tappedGoldenRulesButton() {
        let vc: GoldenRulesVC = GoldenRulesVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedCryptoButton() {
        print(#function)
    }
    
    func tappedExpensesButton() {
        print(#function)
    }
    
    func tappedSetAGoalButton() {
        print(#function)
    }
    
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension SavingMoneyVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SavingMoneyTableViewCell.identifier, for: indexPath) as? SavingMoneyTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentMoneyPhrases(indexPath: indexPath))
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModel.heightForRowAt
    }
}
