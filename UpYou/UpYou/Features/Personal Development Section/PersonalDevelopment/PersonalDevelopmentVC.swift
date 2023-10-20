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
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
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
        variable.spacing = 1
        return variable
    }()
    
    private lazy var environmentComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "ambiente"), title: "Ambiente", subTitle: "O Ambiente importa muito!", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var booksComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "books"), title: "Livros", subTitle: "Um livro é um sonho na sua mão", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var books2Component: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "books"), title: "Livros", subTitle: "Um livro é um sonho na sua mão", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var books3Component: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "books"), title: "Livros", subTitle: "Um livro é um sonho na sua mão", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var books4Component: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "books"), title: "Livros", subTitle: "Um livro é um sonho na sua mão", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private lazy var books5Component: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "books"), title: "Livros", subTitle: "Um livro é um sonho na sua mão", chevronImage: UIImage(systemName: "chevron.right"))
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    
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
        stack.addArrangedSubview(booksComponent)
        stack.addArrangedSubview(books2Component)
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
            stack.bottomAnchor.constraint(equalTo: viewMidBackground.bottomAnchor),
            
//            booksComponent.topAnchor.constraint(equalTo: environmentComponent.bottomAnchor, constant: 20),
//            booksComponent.leadingAnchor.constraint(equalTo: environmentComponent.leadingAnchor),
//            booksComponent.trailingAnchor.constraint(equalTo: environmentComponent.trailingAnchor),
//            booksComponent.heightAnchor.constraint(equalTo: environmentComponent.heightAnchor),
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
