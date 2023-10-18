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
    
    private lazy var booksImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "books")
        return imageView
    }()
    
    private lazy var booksTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Livros"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var booksSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Um livro é um sonho na sua mão."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var booksButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedBooksButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedBooksButton() {
        let vc: BooksVC = BooksVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    private lazy var deepWorkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "target")
        return imageView
    }()
    
    private lazy var deepWorkTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Trabalho Focado"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var deepWorkSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Compreenda o poder do foco."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var deepWorkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedDeepWorkButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    private func tappedDeepWorkButton() {
        let vc: DeepWorkVC = DeepWorkVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var environmentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "ambiente")
        return imageView
    }()
    
    private lazy var environmentTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Ambiente"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var environmentSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "O ambiente importa muito!."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var environmentButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedEnvironmentButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    private func tappedEnvironmentButton() {
        let vc: EnvironmentVC = EnvironmentVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var habitImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "train")
        return imageView
    }()
    
    private lazy var habitTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Habitos"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var habitSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Bons hábitos mudarão a sua vida."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var habitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedHabitButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    private func tappedHabitButton() {
        let vc: HabitsVC = HabitsVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    lazy var sleepImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "sono")
        return imageView
    }()
    
    private lazy var sleepTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Sono"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var sleepSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Dormir bem é essencial."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var sleepButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedSleepButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    private func tappedSleepButton() {
        let vc: SleepVC = SleepVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var stoicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "stoicism")
        return imageView
    }()
    
    private lazy var stoicTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Estoicismo"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var stoicSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Abrace a serenidade e a resiliência."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var stoicButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedStoicButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    private func tappedStoicButton() {
        let vc: StoicismVC = StoicismVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
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
        viewMidBackground.addSubview(booksImageView)
        viewMidBackground.addSubview(booksTitleLabel)
        viewMidBackground.addSubview(booksSubTitlelabel)
        viewMidBackground.addSubview(booksButton)
        viewMidBackground.addSubview(deepWorkImageView)
        viewMidBackground.addSubview(deepWorkTitleLabel)
        viewMidBackground.addSubview(deepWorkSubTitlelabel)
        viewMidBackground.addSubview(deepWorkButton)
        viewMidBackground.addSubview(environmentImageView)
        viewMidBackground.addSubview(environmentTitleLabel)
        viewMidBackground.addSubview(environmentSubTitlelabel)
        viewMidBackground.addSubview(environmentButton)
        viewMidBackground.addSubview(habitImageView)
        viewMidBackground.addSubview(habitTitleLabel)
        viewMidBackground.addSubview(habitSubTitlelabel)
        viewMidBackground.addSubview(habitButton)
        viewMidBackground.addSubview(sleepImageView)
        viewMidBackground.addSubview(sleepTitleLabel)
        viewMidBackground.addSubview(sleepSubTitlelabel)
        viewMidBackground.addSubview(sleepButton)
        viewMidBackground.addSubview(stoicImageView)
        viewMidBackground.addSubview(stoicTitleLabel)
        viewMidBackground.addSubview(stoicSubTitlelabel)
        viewMidBackground.addSubview(stoicButton)
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
            
            environmentImageView.topAnchor.constraint(equalTo: viewMidBackground.topAnchor, constant: 20),
            environmentImageView.leadingAnchor.constraint(equalTo: viewMidBackground.leadingAnchor, constant: 12),
            environmentImageView.heightAnchor.constraint(equalToConstant: 40),
            environmentImageView.widthAnchor.constraint(equalToConstant: 40),
            
            environmentTitleLabel.topAnchor.constraint(equalTo: environmentImageView.topAnchor),
            environmentTitleLabel.leadingAnchor.constraint(equalTo: environmentImageView.trailingAnchor, constant: 15),
            
            environmentSubTitlelabel.topAnchor.constraint(equalTo: environmentTitleLabel.bottomAnchor, constant: 5),
            environmentSubTitlelabel.leadingAnchor.constraint(equalTo: environmentTitleLabel.leadingAnchor),
            
            environmentButton.topAnchor.constraint(equalTo: environmentImageView.topAnchor, constant: 12),
            environmentButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            environmentButton.heightAnchor.constraint(equalToConstant: 20),
            environmentButton.widthAnchor.constraint(equalToConstant: 20),
            
            booksImageView.topAnchor.constraint(equalTo: habitImageView.bottomAnchor, constant: 20),
            booksImageView.leadingAnchor.constraint(equalTo: environmentImageView.leadingAnchor),
            booksImageView.heightAnchor.constraint(equalToConstant: 40),
            booksImageView.widthAnchor.constraint(equalToConstant: 40),
            
            booksTitleLabel.topAnchor.constraint(equalTo: booksImageView.topAnchor),
            booksTitleLabel.leadingAnchor.constraint(equalTo: booksImageView.trailingAnchor, constant: 15),
            
            booksSubTitlelabel.topAnchor.constraint(equalTo: booksTitleLabel.bottomAnchor, constant: 5),
            booksSubTitlelabel.leadingAnchor.constraint(equalTo: booksTitleLabel.leadingAnchor),
            
            booksButton.topAnchor.constraint(equalTo: booksImageView.topAnchor, constant: 12),
            booksButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            booksButton.heightAnchor.constraint(equalToConstant: 20),
            booksButton.widthAnchor.constraint(equalToConstant: 20),
            
            deepWorkImageView.topAnchor.constraint(equalTo: sleepImageView.bottomAnchor, constant: 20),
            deepWorkImageView.leadingAnchor.constraint(equalTo: environmentImageView.leadingAnchor),
            deepWorkImageView.heightAnchor.constraint(equalTo: booksImageView.heightAnchor),
            deepWorkImageView.widthAnchor.constraint(equalTo: booksImageView.widthAnchor),
            
            deepWorkTitleLabel.topAnchor.constraint(equalTo: deepWorkImageView.topAnchor),
            deepWorkTitleLabel.leadingAnchor.constraint(equalTo: deepWorkImageView.trailingAnchor, constant: 15),
            
            deepWorkSubTitlelabel.topAnchor.constraint(equalTo: deepWorkTitleLabel.bottomAnchor, constant: 5),
            deepWorkSubTitlelabel.leadingAnchor.constraint(equalTo: deepWorkTitleLabel.leadingAnchor),
            
            deepWorkButton.topAnchor.constraint(equalTo: deepWorkImageView.topAnchor, constant: 12),
            deepWorkButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            deepWorkButton.heightAnchor.constraint(equalTo: booksButton.heightAnchor),
            deepWorkButton.widthAnchor.constraint(equalTo: booksButton.widthAnchor),
            
            habitImageView.topAnchor.constraint(equalTo: stoicImageView.bottomAnchor, constant: 20),
            habitImageView.leadingAnchor.constraint(equalTo: environmentImageView.leadingAnchor),
            habitImageView.heightAnchor.constraint(equalTo: booksImageView.heightAnchor),
            habitImageView.widthAnchor.constraint(equalTo: booksImageView.widthAnchor),
            
            habitTitleLabel.topAnchor.constraint(equalTo: habitImageView.topAnchor),
            habitTitleLabel.leadingAnchor.constraint(equalTo: habitImageView.trailingAnchor, constant: 15),
            
            habitSubTitlelabel.topAnchor.constraint(equalTo: habitTitleLabel.bottomAnchor, constant: 5),
            habitSubTitlelabel.leadingAnchor.constraint(equalTo: habitTitleLabel.leadingAnchor),
            
            habitButton.topAnchor.constraint(equalTo: habitImageView.topAnchor, constant: 12),
            habitButton.trailingAnchor.constraint(equalTo: booksButton.trailingAnchor),
            habitButton.heightAnchor.constraint(equalTo: booksButton.heightAnchor),
            habitButton.widthAnchor.constraint(equalTo: booksButton.widthAnchor),
            
            sleepImageView.topAnchor.constraint(equalTo: booksImageView.bottomAnchor, constant: 20),
            sleepImageView.leadingAnchor.constraint(equalTo: environmentImageView.leadingAnchor),
            sleepImageView.heightAnchor.constraint(equalTo: booksImageView.heightAnchor),
            sleepImageView.widthAnchor.constraint(equalTo: booksImageView.widthAnchor),
            
            sleepTitleLabel.topAnchor.constraint(equalTo: sleepImageView.topAnchor),
            sleepTitleLabel.leadingAnchor.constraint(equalTo: sleepImageView.trailingAnchor, constant: 15),
            
            sleepSubTitlelabel.topAnchor.constraint(equalTo: sleepTitleLabel.bottomAnchor, constant: 5),
            sleepSubTitlelabel.leadingAnchor.constraint(equalTo: sleepTitleLabel.leadingAnchor),
            
            sleepButton.topAnchor.constraint(equalTo: sleepImageView.topAnchor, constant: 12),
            sleepButton.trailingAnchor.constraint(equalTo: booksButton.trailingAnchor),
            sleepButton.heightAnchor.constraint(equalTo: booksButton.heightAnchor),
            sleepButton.widthAnchor.constraint(equalTo: booksButton.widthAnchor),
            
            stoicImageView.topAnchor.constraint(equalTo: environmentImageView.bottomAnchor, constant: 20),
            stoicImageView.leadingAnchor.constraint(equalTo: environmentImageView.leadingAnchor),
            stoicImageView.heightAnchor.constraint(equalTo: booksImageView.heightAnchor),
            stoicImageView.widthAnchor.constraint(equalTo: booksImageView.widthAnchor),
            
            stoicTitleLabel.topAnchor.constraint(equalTo: stoicImageView.topAnchor),
            stoicTitleLabel.leadingAnchor.constraint(equalTo: stoicImageView.trailingAnchor, constant: 15),
            
            stoicSubTitlelabel.topAnchor.constraint(equalTo: stoicTitleLabel.bottomAnchor, constant: 5),
            stoicSubTitlelabel.leadingAnchor.constraint(equalTo: stoicTitleLabel.leadingAnchor),
            
            stoicButton.topAnchor.constraint(equalTo: stoicImageView.topAnchor, constant: 12),
            stoicButton.trailingAnchor.constraint(equalTo: deepWorkButton.trailingAnchor),
            stoicButton.heightAnchor.constraint(equalTo: booksButton.heightAnchor),
            stoicButton.widthAnchor.constraint(equalTo: booksButton.widthAnchor),
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
