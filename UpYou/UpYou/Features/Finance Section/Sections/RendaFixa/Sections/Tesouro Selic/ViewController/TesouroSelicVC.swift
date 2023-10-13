//
//  TesouroSelicVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TesouroSelicVC: UIViewController {
    
    var screen: TesouroSelicScreen?
    var viewModel: TesouroSelicViewModel = TesouroSelicViewModel()
    
    override func loadView() {
        screen = TesouroSelicScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }


}

extension TesouroSelicVC: TesouroSelicViewModelDelegate {
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

extension TesouroSelicVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TesouroSelicTableViewCell.identifier, for: indexPath) as? TesouroSelicTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentSelic(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension TesouroSelicVC: TesouroSelicScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
