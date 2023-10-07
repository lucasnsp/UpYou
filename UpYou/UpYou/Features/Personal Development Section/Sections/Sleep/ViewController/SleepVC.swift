//
//  SleepVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import UIKit

class SleepVC: UIViewController {
    
    var screen: SleepScreen?
    var viewModel = SleepViewModel()
    
    override func loadView() {
        screen = SleepScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        viewModel.fetchAllRequest()
    }

}

extension SleepVC: SleepViewModelDelegate {
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

extension SleepVC: SleepScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension SleepVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SleepTableViewCell.identifier, for: indexPath) as? SleepTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentSleep(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
