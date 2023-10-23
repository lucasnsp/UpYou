//
//  PersonalDevelopmentVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 23/09/23.
//

import UIKit

class PersonalDevelopmentVC: UIViewController {
    
    var viewModel = PersonalDevelopmentViewModel()
    
    init(viewModel: PersonalDevelopmentViewModel = PersonalDevelopmentViewModel()) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var viewMidBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PersonalDevelopmentTableViewCell.self, forCellReuseIdentifier: PersonalDevelopmentTableViewCell.identifier)
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 20
        tableView.backgroundColor = .black.withAlphaComponent(0.6)
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private lazy var stack: UIStackView = {
        let variable = UIStackView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.distribution = .fillEqually
        variable.axis = .vertical
        variable.spacing = 0.5
        return variable
    }()
    
    private lazy var environmentComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.environmentIcon, title: "Ambiente", subTitle: "O Ambiente importa muito!", target: self, action: #selector(tappedEnvironmentButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedEnvironmentButton() {
        let vc: EnvironmentVC = EnvironmentVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var stoicismComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.stoicismIcon, title: "Estoicismo", subTitle: "Abrace a serenidade e a resiliência.", target: self, action: #selector(tappedStoicismButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedStoicismButton() {
        let vc: StoicismVC = StoicismVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var habitsComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.habitsIcon, title: "Hábitos", subTitle: "Bons hábitos mudarão a sua vida.", target: self, action: #selector(tappedHabitsButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedHabitsButton() {
        let vc: HabitsVC = HabitsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var booksComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.booksIcon, title: "Livros", subTitle: "Um livro é um sonho na sua mão", target: self, action: #selector(tappedBooksButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedBooksButton() {
        let vc: BooksVC = BooksVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var sleepComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.sleepIcon, title: "Sono", subTitle: "Dormir bem é essencial!", target: self, action: #selector(tappedSleepButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedSleepButton() {
        let vc: SleepVC = SleepVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var deepWorkComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage.deepWorkIcon, title: "Trabalho Focado", subTitle: "Compreenda o poder do foco.", target: self, action: #selector(tappedDeepWorkButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedDeepWorkButton() {
        let vc: DeepWorkVC = DeepWorkVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchAllRequest()
        viewModel.delegate(delegate: self)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(tableView)
        view.addSubview(viewMidBackground)
        viewMidBackground.addSubview(stack)
        stack.addArrangedSubview(environmentComponent)
        stack.addArrangedSubview(stoicismComponent)
        stack.addArrangedSubview(habitsComponent)
        stack.addArrangedSubview(booksComponent)
        stack.addArrangedSubview(sleepComponent)
        stack.addArrangedSubview(deepWorkComponent)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            tableView.heightAnchor.constraint(equalToConstant: 145),
            
            viewMidBackground.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 40),
            viewMidBackground.leadingAnchor.constraint(equalTo: tableView.leadingAnchor),
            viewMidBackground.trailingAnchor.constraint(equalTo: tableView.trailingAnchor),
            viewMidBackground.heightAnchor.constraint(equalToConstant: 380),
            
            stack.topAnchor.constraint(equalTo: viewMidBackground.topAnchor),
            stack.leadingAnchor.constraint(equalTo: viewMidBackground.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: viewMidBackground.bottomAnchor, constant: -15),
        ])
    }
}

extension PersonalDevelopmentVC: PersonalDevelopmentViewModelDelegate {
    func success() {
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            self.configTableViewProtocols(delegate: self, dataSource: self)
            self.tableView.reloadData()
        }
    }
    
    func error() {
        print(#function)
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

#if DEBUG
  import SwiftUI

  struct PersonalDevelopmentVC_Preview: PreviewProvider {
    static var previews: some View {
      return SwiftUIPreview { _ in
          return PersonalDevelopmentVC().view
      }
    }
  }
#endif
