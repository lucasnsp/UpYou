//
//  ExpensesVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 28/10/23.
//

import UIKit

class ExpensesVC: UIViewController {
    
    private var currentYPosition: CGFloat = 0
    
    var expenses: [expenseDB] = []
    
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
        label.text = "Despesas"
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
        btn.setTitle("Configurar Despesas", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemRed
        btn.addTarget(self, action: #selector(tappedAddGoalButton), for: .touchUpInside)
        btn.layer.cornerRadius = 24
        return btn
    }()
    
    @objc private func tappedAddGoalButton() {
        let alertController = UIAlertController(title: "Adicionar Despesa", message: "Levar em conta que suas DESPESAS mensais devem ser no minimo 10% a menos do que sua renda mensal.", preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Despesa"
            textField.keyboardType = .alphabet
        }
        alertController.addTextField { textField in
            textField.placeholder = "R$ 0,00"
            textField.keyboardType = .decimalPad
        }
        
        let addAction = UIAlertAction(title: "Adicionar", style: .default) { [weak self] _ in
            guard let despesa = alertController.textFields?[0].text,
                  let valor = alertController.textFields?[1].text
            else {
                return
            }
            
            self?.createInfoBox(expense: despesa, value: valor)
        }
        
        alertController.addAction(addAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Create Box elements
    
    private func createInfoBoxView(for exp: expenseDB) {
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
        
        lazy var expenseLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = exp.expense
            label.textColor = .white
            label.font = UIFont.boldSystemFont(ofSize: 20)
            return label
        }()
        
        lazy var valueLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.text = "Valor: R$ \(exp.value)"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
            return label
        }()
        
        lazy var anualExpense: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .systemRed
            label.text = "Despesa Anual: R$ \(exp.anualExpense)"
            label.font = UIFont.boldSystemFont(ofSize: 16)
            return label
        }()
        
        lazy var deleteButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setImage(UIImage(systemName: "xmark.seal.fill"), for: .normal)
            button.tintColor = .red
            button.addTarget(self, action: #selector(tappedDeleteButton), for: .touchUpInside)
            button.tag = expenses.firstIndex { $0 == exp } ?? 0
            return button
        }()
        
        infoContainer.addSubview(viewBackground)
        viewBackground.addSubview(infoImageBox)
        viewBackground.addSubview(expenseLabel)
        viewBackground.addSubview(valueLabel)
        viewBackground.addSubview(anualExpense)
        viewBackground.addSubview(deleteButton)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: currentYPosition),
            viewBackground.widthAnchor.constraint(equalTo: infoContainer.widthAnchor),
            viewBackground.heightAnchor.constraint(equalToConstant: 140),
            
            infoImageBox.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            infoImageBox.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 15),
            infoImageBox.widthAnchor.constraint(equalToConstant: 100),
            infoImageBox.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: -20),
            
            expenseLabel.topAnchor.constraint(equalTo: infoImageBox.topAnchor),
            expenseLabel.leadingAnchor.constraint(equalTo: infoImageBox.trailingAnchor, constant: 15),
            
            valueLabel.topAnchor.constraint(equalTo: expenseLabel.bottomAnchor, constant: 5),
            valueLabel.leadingAnchor.constraint(equalTo: expenseLabel.leadingAnchor),
            
            anualExpense.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 20),
            anualExpense.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -10),
            
            deleteButton.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 10),
            deleteButton.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -15),
            deleteButton.widthAnchor.constraint(equalToConstant: 25),
            deleteButton.heightAnchor.constraint(equalToConstant: 25),
        ])
        currentYPosition += 180
        infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
    }
    
    // MARK: - DeleteButton Logic
    
    @objc private func tappedDeleteButton(sender: UIButton) {
        if let index = sender.tag as Int? {
            expenses.remove(at: index)
            saveGoals()
            removeInfoBoxView(at: index)
        }
    }
    
    // MARK: - Create Box
    
    private func createInfoBox(expense: String, value: String) {
        print("Creating info box with: Goal: \(expense), Value: \(value)")
        
        if let valueWorthy = Int(value), valueWorthy >= 1 {
            let totalExpenseAnual = valueWorthy * 12
            
            let newExpense = expenseDB(expense: expense, value: valueWorthy, anualExpense: totalExpenseAnual)
            
            expenses.append(newExpense)
            saveGoals()
            createInfoBoxView(for: newExpense)
            
            currentYPosition += 160
            infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
        } else {
            let ac = UIAlertController(title: "Erro na configuração da despesa", message: "Por favor inserir os dados de forma correta, levar em conta que não é necessário o uso de simbolos ou virgulas.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(ac, animated: true)
        }
    }
    
    // MARK: - Method to create boxes
    
    private func createInfoBoxesForExpenses() {
        for expense in expenses {
            createInfoBoxView(for: expense)
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
            let data = try encoder.encode(expenses)
            userDefaults.set(data, forKey: "expensesSaved")
        } catch {
            print("Erro ao salvar as metas: \(error)")
        }
    }
    
    // MARK: - Load existing boxes
    
    private func loadGoals() {
        let userDefaults = UserDefaults.standard
        if let data = userDefaults.data(forKey: "expensesSaved") {
            do {
                let decoder = JSONDecoder()
                let loadedGoals = try decoder.decode([expenseDB].self, from: data)
                expenses = loadedGoals
                createInfoBoxesForExpenses()
                print("\(expenses.count) goals loaded")
            } catch {
                print("Erro ao carregar metas: \(error)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configConstraints()
        loadGoals()
    }
    
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
