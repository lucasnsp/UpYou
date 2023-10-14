//
//  FiisVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class FiisVC: UIViewController {
    
    var screen: FiisScreen?
    var viewModel: FiisViewModel = FiisViewModel()
    
    override func loadView() {
        screen = FiisScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension FiisVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FiisTableViewCell.identifier, for: indexPath) as? FiisTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentFiis(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension FiisVC: FiisViewModelDelegate {
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

extension FiisVC: FiisScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
