//
//  GoldenRulesVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

class GoldenRulesVC: UIViewController {
    
    var screen: GoldenRulesScreen?
    var viewModel: GoldenRulesViewModel = GoldenRulesViewModel()
    
    override func loadView() {
        screen = GoldenRulesScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        viewModel.fetchAllRequest()
    }

}


extension GoldenRulesVC: GoldenRulesViewModelDelegate {
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


extension GoldenRulesVC: GoldenRulesScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}
