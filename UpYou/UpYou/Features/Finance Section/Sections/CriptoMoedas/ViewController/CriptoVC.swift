//
//  CriptoVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class CriptoVC: UIViewController {
    
    var screen: CriptoScreen?
    var viewModel: CriptoViewModel = CriptoViewModel()
    
    override func loadView() {
        screen = CriptoScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension CriptoVC: CriptoViewModelDelegate {
    func success() {
        DispatchQueue.main.async { [ weak self ] in
            self?.screen?.configTableViewProtocols(delegate: self!, dataSource: self!)
            self?.screen?.tableView.reloadData()
        }
    }
    
    func error() {
        print(#function)
    }
    
    
}

extension CriptoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CriptoTableViewCell.identifier, for: indexPath) as? CriptoTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentCripto(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension CriptoVC: CriptoScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
