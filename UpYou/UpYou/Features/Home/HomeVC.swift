//
//  HomeVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var viewModel: HomeViewModel = HomeViewModel()
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
        return image
    }()
    
    private lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Home"
        label.font = UIFont.boldSystemFont(ofSize: 27)
        return label
    }()
    
    private lazy var viewTopBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 14
        return view
    }()
    
    private lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Saldo"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    private lazy var addIncomeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray.withAlphaComponent(0.2)
        button.setTitle("Adicionar Renda", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = 22
        button.addTarget(self, action: #selector(tappedAddIncomeButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    private func tappedAddIncomeButton() {
        let alertController = UIAlertController(title: "Adicionar Renda", message: "Digite a sua Renda Mensal", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "R$ 0,00"
            textField.keyboardType = .decimalPad
        }
        
        let addAction = UIAlertAction(title: "Salvar", style: .default) { [weak self] _ in
            if let textField = alertController.textFields?.first, let incomeText = textField.text, let income = Double(incomeText) {
                let formatter = NumberFormatter()
                formatter.numberStyle = .currency
                formatter.currencySymbol = "R$"
                formatter.locale = Locale(identifier: "pt_BR")
                
                if let formattedIncome = formatter.string(from: NSNumber(value: income)) {
                    self?.incomeTextField.text = formattedIncome
                }
            }
        }
        alertController.addAction(addAction)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    private lazy var incomeTextField: UITextField = {
        let tf = UITextField()
        tf.attributedPlaceholder = NSAttributedString(string: "R$ 0.00", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        tf.textColor = UIColor.white
        tf.font = UIFont.boldSystemFont(ofSize: 40)
        tf.keyboardType = .decimalPad
        tf.isEnabled = false
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configConstraints()
        
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(homeLabel)
        view.addSubview(viewTopBackground)
        viewTopBackground.addSubview(balanceLabel)
        viewTopBackground.addSubview(addIncomeButton)
        viewTopBackground.addSubview(incomeTextField)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: view.topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            homeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
            homeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            viewTopBackground.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 30),
            viewTopBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewTopBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            viewTopBackground.heightAnchor.constraint(equalToConstant: 180),
            
            balanceLabel.topAnchor.constraint(equalTo: viewTopBackground.topAnchor, constant: 15),
            balanceLabel.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 17),
            
            incomeTextField.topAnchor.constraint(equalTo: balanceLabel.topAnchor, constant: 35),
            incomeTextField.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 17),
            incomeTextField.trailingAnchor.constraint(equalTo: viewTopBackground.trailingAnchor, constant: -10),

            addIncomeButton.bottomAnchor.constraint(equalTo: viewTopBackground.bottomAnchor, constant: -20),
            addIncomeButton.heightAnchor.constraint(equalToConstant: 50),
            addIncomeButton.leadingAnchor.constraint(equalTo: viewTopBackground.leadingAnchor, constant: 40),
            addIncomeButton.trailingAnchor.constraint(equalTo: viewTopBackground.trailingAnchor, constant: -40),
        ])
    }
}

#if DEBUG
  import SwiftUI

  struct HomeVC_Preview: PreviewProvider {
    static var previews: some View {
      return SwiftUIPreview { _ in
          return HomeVC().view
      }
    }
  }
#endif
