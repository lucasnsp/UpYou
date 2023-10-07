//
//  HabitsVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

class HabitsVC: UIViewController {
    
    var screen: HabitsScreen?
    var viewModel = HabitsViewModel()
    
    override func loadView() {
        screen = HabitsScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.delegate(delegate: self)
        viewModel.fetchAllRequest()
    }

}

extension HabitsVC: HabitsScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}

extension HabitsVC: HabitsViewModelDelegate {
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

extension HabitsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HabitsTableViewCell.identifier, for: indexPath) as? HabitsTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentHabits(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
