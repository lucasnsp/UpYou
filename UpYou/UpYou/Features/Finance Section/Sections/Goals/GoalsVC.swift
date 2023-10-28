//
//  GoalsVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/10/23.
//

import UIKit

class GoalsVC: UIViewController {
    
    private var currentYPosition: CGFloat = 0
    
    var goals: [goalsDB] = []
    
    // MARK: - Elements
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .gray
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView(image: UIImage.backgroundImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Metas"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var infoContainer: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isScrollEnabled = true
        scrollView.contentSize = CGSize(width: scrollView.bounds.size.width, height: scrollView.bounds.size.height)
        return scrollView
    }()
    
    private lazy var addGoalButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Criar Caixinha", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemGreen
        btn.addTarget(self, action: #selector(tappedAddGoalButton), for: .touchUpInside)
        btn.layer.cornerRadius = 24
        return btn
    }()
    
    // MARK: - AddGoalButton Logic
    
    @objc private func tappedAddGoalButton() {
        let alertController = UIAlertController(title: "Adicionar Meta", message: nil, preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Meta"
            textField.keyboardType = .alphabet
        }
        alertController.addTextField { textField in
            textField.placeholder = "R$ 0,00"
            textField.keyboardType = .decimalPad
        }
        alertController.addTextField { textField in
            textField.placeholder = "Tempo em meses"
            textField.keyboardType = .numberPad
        }
        
        let addAction = UIAlertAction(title: "Adicionar", style: .default) { [weak self] _ in
            guard let meta = alertController.textFields?[0].text,
                  let valor = alertController.textFields?[1].text,
                  let tempo = alertController.textFields?[2].text else {
                return
            }
            
            self?.createInfoBox(goal: meta, value: valor, time: tempo)
        }
        
        alertController.addAction(addAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - DeleteButton Logic
    
    @objc private func tappedDeleteButton(sender: UIButton) {
        if let index = sender.tag as Int? {
            goals.remove(at: index)
            saveGoals()
            removeInfoBoxView(at: index)
        }
    }
    
    // MARK: - Create Box elements
    
    private func createInfoBoxView(for goal: goalsDB) {
        lazy var viewBackground: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .black.withAlphaComponent(0.6)
            view.clipsToBounds = true
            view.layer.cornerRadius = 20
            return view
        }()
        
        lazy var infoImageBox: UIImageView = {
            let image = UIImageView(image: UIImage.randomGoalImages)
            image.translatesAutoresizingMaskIntoConstraints = false
            image.clipsToBounds = true
            image.layer.cornerRadius = 22
            return image
        }()
        
        lazy var goalLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = goal.goal
            label.textColor = .white
            label.font = UIFont.boldSystemFont(ofSize: 20)
            return label
        }()
        
        lazy var valueLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.text = "Valor: R$ \(goal.value)"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
            return label
        }()
        
        lazy var timeLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.text = "Tempo: \(goal.time) Meses"
            label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            return label
        }()
        
        lazy var economyLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .systemGreen
            label.font = UIFont.boldSystemFont(ofSize: 14)
            label.text = "R$ \(goal.monthlySavings) p/Mês"
            return label
        }()
        
        lazy var deleteButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(systemName: "xmark.seal.fill"), for: .normal)
            button.tintColor = .red
            button.addTarget(self, action: #selector(tappedDeleteButton), for: .touchUpInside)
            button.tag = goals.firstIndex { $0 == goal } ?? 0
            return button
        }()
        
        infoContainer.addSubview(viewBackground)
        viewBackground.addSubview(infoImageBox)
        viewBackground.addSubview(goalLabel)
        viewBackground.addSubview(valueLabel)
        viewBackground.addSubview(timeLabel)
        viewBackground.addSubview(economyLabel)
        viewBackground.addSubview(deleteButton)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: currentYPosition),
            viewBackground.widthAnchor.constraint(equalTo: infoContainer.widthAnchor),
            viewBackground.heightAnchor.constraint(equalToConstant: 140),
            
            infoImageBox.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            infoImageBox.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            infoImageBox.widthAnchor.constraint(equalToConstant: 100),
            infoImageBox.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: -20),
            
            goalLabel.topAnchor.constraint(equalTo: infoImageBox.topAnchor),
            goalLabel.leadingAnchor.constraint(equalTo: infoImageBox.trailingAnchor, constant: 15),
            
            valueLabel.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 5),
            valueLabel.leadingAnchor.constraint(equalTo: goalLabel.leadingAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            timeLabel.leadingAnchor.constraint(equalTo: goalLabel.leadingAnchor),
            
            economyLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 5),
            economyLabel.leadingAnchor.constraint(equalTo: goalLabel.leadingAnchor),
            
            deleteButton.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 10),
            deleteButton.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            deleteButton.widthAnchor.constraint(equalToConstant: 25),
            deleteButton.heightAnchor.constraint(equalToConstant: 25),
        ])
        currentYPosition += 180
        infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
    }
    
    // MARK: - Create Box
    
    private func createInfoBox(goal: String, value: String, time: String) {
        print("Creating info box with: Goal: \(goal), Value: \(value), Time: \(time)")
        
         if let valueWorthy = Int(value),
            let intValue = Int(time), intValue >= 1 {
            let monthlySave = valueWorthy / intValue
            
            let newGoal = goalsDB(goal: goal, value: valueWorthy, time: intValue, monthlySavings: monthlySave)
            
            goals.append(newGoal)
            saveGoals()
            createInfoBoxView(for: newGoal)
            
            currentYPosition += 160
            infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
        } else {
            let ac = UIAlertController(title: "Erro na criação da caixinha", message: "Por favor inserir os dados de forma correta, levar em conta que não é necessário o uso de simbolos ou virgulas.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(ac, animated: true)
        }
    }
    
    // MARK: - Method to create boxes
    
    private func createInfoBoxesForGoals() {
        for goal in goals {
            createInfoBoxView(for: goal)
        }
    }
    
    // MARK: - Remove Box
    
    private func removeInfoBoxView(at index: Int) {
        if index < infoContainer.subviews.count {
            let viewToRemove = infoContainer.subviews[index]
            viewToRemove.removeFromSuperview()
            
            for i in index..<infoContainer.subviews.count {
                let view = infoContainer.subviews[i]
                view.frame.origin.y -= 160
            }
            currentYPosition -= 160
            infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
        }
    }
    
    // MARK: - Save boxes to UserDefaults
    
    func saveGoals() {
        let userDefaults = UserDefaults.standard
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(goals)
            userDefaults.set(data, forKey: "goalsSaved")
        } catch {
            print("Erro ao salvar as metas: \(error)")
        }
    }
    
    // MARK: - Load existing boxes
    
    private func loadGoals() {
        let userDefaults = UserDefaults.standard
        if let data = userDefaults.data(forKey: "goalsSaved") {
            do {
                let decoder = JSONDecoder()
                let loadedGoals = try decoder.decode([goalsDB].self, from: data)
                goals = loadedGoals
                createInfoBoxesForGoals()
                print("\(goals.count) goals loaded")
            } catch {
                print("Erro ao carregar metas: \(error)")
            }
        }
    }
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configConstraints()
        loadGoals()
    }
    
    // MARK: - Elements and Constraints
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(backButton)
        view.addSubview(titleLabel)
        view.addSubview(infoContainer)
        view.addSubview(addGoalButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            infoContainer.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            infoContainer.widthAnchor.constraint(equalTo: view.widthAnchor),
            infoContainer.bottomAnchor.constraint(equalTo: addGoalButton.topAnchor, constant: -20),
            
            addGoalButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            addGoalButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            addGoalButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            addGoalButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
