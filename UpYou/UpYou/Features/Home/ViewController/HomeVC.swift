//
//  HomeVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configPersonalTableViewProtocols(delegate: self, dataSource: self)
        screen?.delegate(delegate: self)
        
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
}

extension HomeVC: HomeScreenDelegate {
    func tappedGoalsButton() {
        let vc = OnboardingSavesVC()
        navigationController?.pushViewController(vc, animated: false)
    }
    
    func tappedAddIncomeButton() {
        print(#function)
        
        let alertController = UIAlertController(title: "Add Income", message: "Type your monthly income", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "R$ 0,00"
            textField.keyboardType = .decimalPad
        }
        
        let addAction = UIAlertAction(title: "Save", style: .default) { [weak self] _ in
            if let textField = alertController.textFields?.first, let incomeText = textField.text, let income = Double(incomeText) {
                let formatter = NumberFormatter()
                formatter.numberStyle = .currency
                formatter.currencySymbol = "R$"
                formatter.locale = Locale(identifier: "pt_BR")
                
                if let formattedIncome = formatter.string(from: NSNumber(value: income)) {
                    self?.screen?.incomeTextField.text = formattedIncome
                }
            }
        }
        alertController.addAction(addAction)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}








