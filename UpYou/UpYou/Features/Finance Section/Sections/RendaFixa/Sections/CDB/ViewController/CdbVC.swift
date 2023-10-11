//
//  CdbVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

class CdbVC: UIViewController {
    
    var screen: CdbScreen?
    var viewModel = CdbViewModel()
    
    override func loadView() {
        screen = CdbScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension CdbVC: CdbViewModelDelegate {
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

extension CdbVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CDBTableViewCell.identifier, for: indexPath) as? CDBTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentFocus(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension CdbVC: CdbScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
