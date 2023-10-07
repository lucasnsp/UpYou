//
//  BooksVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 28/09/23.
//

import UIKit

class BooksVC: UIViewController {
    
    var screen: BooksScreen?
    var viewModel = BooksViewModel()
    
    override func loadView() {
        screen = BooksScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension BooksVC: BooksScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension BooksVC: BooksViewModelDelegate {
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

extension BooksVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BooksTableViewCell.identifier, for: indexPath) as? BooksTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentBooks(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}


