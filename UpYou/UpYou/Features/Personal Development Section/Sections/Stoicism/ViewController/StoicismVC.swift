//
//  StoicismVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

class StoicismVC: UIViewController {
    
    var screen: StoicismScreen?
    var viewModel = StoicismViewModel()
    
    override func loadView() {
        screen = StoicismScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension StoicismVC: StoicismScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension StoicismVC: StoicismViewModelDelegate {
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

extension StoicismVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoicismTableViewCell.identifier, for: indexPath) as? StoicismTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentStoic(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
