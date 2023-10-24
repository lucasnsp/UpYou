//
//  GoalsVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 24/10/23.
//

import UIKit

class GoalsVC: UIViewController {
    
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
    
    private lazy var addGoalButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Criar Caixinha", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.titleLabel?.textColor = .white
        btn.backgroundColor = .systemGreen
        btn.addTarget(self, action: #selector(tappedAddGoalButton), for: .touchUpInside)
        btn.layer.cornerRadius = 24
        return btn
    }()
    
    @objc private func tappedAddGoalButton() {
        let alertController = UIAlertController(title: "Adicionar Meta", message: nil, preferredStyle: .alert)
        alertController.addTextField { textField in
            textField.placeholder = "Meta"
        }
        alertController.addTextField { textField in
            textField.placeholder = "R$ 0,00"
            textField.keyboardType = .decimalPad
        }
        alertController.addTextField { textField in
            textField.placeholder = "Tempo"
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
    
    private func createInfoBox(goal: String, value: String, time: String) {
        
      lazy var viewBackground: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .black.withAlphaComponent(0.6)
            view.clipsToBounds = true
            view.layer.cornerRadius = 20
            return view
        }()
        
        lazy var stack: UIStackView = {
            let variable = UIStackView()
            variable.translatesAutoresizingMaskIntoConstraints = false
            variable.distribution = .fillEqually
            variable.axis = .vertical
            variable.spacing = 0.5
            return variable
        }()
        
        lazy var infoBox: CustomInfoBox = {
            let component = CustomInfoBox(image: UIImage.setAgoalIcon, title: goal, value$: value, time$: time)
            component.translatesAutoresizingMaskIntoConstraints = false
            return component
        }()
        
        view.addSubview(viewBackground)
        viewBackground.addSubview(stack)
        stack.addArrangedSubview(infoBox)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            viewBackground.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            viewBackground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            viewBackground.heightAnchor.constraint(equalToConstant: 480),
            
            stack.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            stack.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: 20), 
        ])
    }
    
    override func viewDidLoad() {
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(backButton)
        view.addSubview(titleLabel)
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
            
            addGoalButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            addGoalButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            addGoalButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            addGoalButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
}
