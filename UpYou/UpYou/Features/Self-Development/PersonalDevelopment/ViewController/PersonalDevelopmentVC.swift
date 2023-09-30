//
//  PersonalDevelopmentVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 23/09/23.
//

import UIKit

class PersonalDevelopmentVC: UIViewController {
    
    var screen: PersonalDevelopmentScreen?
    var viewModel = PersonalDevelopmentViewModel()
    
    override func loadView() {
        screen = PersonalDevelopmentScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
    }

}

extension PersonalDevelopmentVC: PersonalDevelopmentViewModelDelegate {
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

extension PersonalDevelopmentVC: PersonalDevelopmentScreenDelegate {
    func tappedSleepButton() {
        print(#function)
    }
    
    func tappedEnvironmentButton() {
        let vc: EnvironmentVC = EnvironmentVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)    }
    
    func tappedBooksButton() {
        let vc: BooksVC = BooksVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedDeepWorkButton() {
        let vc: DeepWorkVC = DeepWorkVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedHabitButton() {
        print(#function)
    }
    
    func tappedStoicButton() {
        print(#function)
    }
    
    func tappedBackButton() {
        dismiss(animated: true)
    }
}

extension PersonalDevelopmentVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonalDevelopmentTableViewCell.identifier, for: indexPath) as? PersonalDevelopmentTableViewCell
        cell?.setupCell(data: viewModel.loadCurrentQuotes(indexPath: indexPath))
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModel.heightForRowAt
    }
}
