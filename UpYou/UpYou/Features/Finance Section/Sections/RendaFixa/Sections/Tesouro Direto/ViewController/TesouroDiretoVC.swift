//
//  TesouroDiretoVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import UIKit

class TesouroDiretoVC: UIViewController {
    
    var screen: TesouroDiretoScreen?
    var viewModel: TesouroDiretoViewModel = TesouroDiretoViewModel()
    
    override func loadView() {
        screen = TesouroDiretoScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension TesouroDiretoVC: TesouroDiretoViewModelDelegate {
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

extension TesouroDiretoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TesouroDiretoTableViewCell.identifier, for: indexPath) as? TesouroDiretoTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentFocus(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension TesouroDiretoVC: TesouroDiretoScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
