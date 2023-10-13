//
//  TesouroIpcaVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroIpcaVC: UIViewController {
    
    var screen: TesouroIpcaScreen?
    var viewModel: TesouroIpcaViewModel = TesouroIpcaViewModel()
    
    override func loadView() {
        screen = TesouroIpcaScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension TesouroIpcaVC: TesouroIpcaViewModelDelegate {
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

extension TesouroIpcaVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TesouroIpcaTableViewCell.identifier, for: indexPath) as? TesouroIpcaTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentIpca(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension TesouroIpcaVC: TesouroIpcaScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
