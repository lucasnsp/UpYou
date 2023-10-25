//
//  GoalsVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 24/10/23.
//

import UIKit

class GoalsVC: UIViewController {
    
    private var currentYPosition: CGFloat = 20
    
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
        print("Creating info box with: Goal: \(goal), Value: \(value), Time: \(time)")
        
        lazy var viewBackground: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .black.withAlphaComponent(0.6)
            view.clipsToBounds = true
            view.layer.cornerRadius = 20
            return view
        }()
        
        lazy var infoImageBox: UIImageView = {
            let image = UIImageView(image: UIImage.setAgoalIcon)
            image.translatesAutoresizingMaskIntoConstraints = false
            image.clipsToBounds = true
            image.layer.cornerRadius = 18
            return image
        }()
        
        lazy var goalLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Meta: \(goal)"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }()
        
        lazy var valueLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.text = "Valor: \(value)"
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }()
        
        lazy var timeLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.text = "Tempo: \(time)"
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }()
        
        view.addSubview(viewBackground)
        viewBackground.addSubview(infoImageBox)
        viewBackground.addSubview(goalLabel)
        viewBackground.addSubview(valueLabel)
        viewBackground.addSubview(timeLabel)
        
        NSLayoutConstraint.activate([
            viewBackground.topAnchor.constraint(equalTo: infoContainer.topAnchor, constant: currentYPosition),
            viewBackground.leadingAnchor.constraint(equalTo: infoContainer.leadingAnchor, constant: 20),
            viewBackground.trailingAnchor.constraint(equalTo: infoContainer.trailingAnchor, constant: -20),
            viewBackground.heightAnchor.constraint(equalToConstant: 120),
            
            infoImageBox.centerYAnchor.constraint(equalTo: viewBackground.centerYAnchor),
            infoImageBox.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 12),
            infoImageBox.widthAnchor.constraint(equalToConstant: 60),
            infoImageBox.heightAnchor.constraint(equalToConstant: 60),
            
            goalLabel.topAnchor.constraint(equalTo: infoImageBox.topAnchor, constant: 10),
            goalLabel.leadingAnchor.constraint(equalTo: infoImageBox.trailingAnchor, constant: 10),
            
            valueLabel.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 8),
            valueLabel.leadingAnchor.constraint(equalTo: goalLabel.leadingAnchor),
            
            timeLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 5),
            timeLabel.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -12),
        ])
        
        currentYPosition += 140
        
        infoContainer.contentSize = CGSize(width: infoContainer.frame.width, height: currentYPosition)
    }
    
    override func viewDidLoad() {
        addViews()
        configConstraints()
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
            infoContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            infoContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            infoContainer.bottomAnchor.constraint(equalTo: addGoalButton.topAnchor, constant: -20),
            
            addGoalButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            addGoalButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            addGoalButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            addGoalButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
