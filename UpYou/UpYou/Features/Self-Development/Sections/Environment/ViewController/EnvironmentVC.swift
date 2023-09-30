//
//  EnvironmentVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class EnvironmentVC: UIViewController {
    
    var screen: EnvironmentScreen?
    var viewModel = EnvironmentViewModel()
    
    override func loadView() {
        screen = EnvironmentScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }
}

extension EnvironmentVC: EnvironmentScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension EnvironmentVC: EnvironmentViewModelDelegate {
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

extension EnvironmentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EnvironmentTableViewCell.identifier, for: indexPath) as? EnvironmentTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentEnvironment(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
