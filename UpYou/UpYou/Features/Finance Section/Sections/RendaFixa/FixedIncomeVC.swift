//
//  FixedIncomeVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

class FixedIncomeVC: UIViewController {
    
    private lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background6")
        return image
    }()
    
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
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Renda Fixa"
        return label
    }()
    
    private lazy var viewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        view.clipsToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var stackEducational: UIStackView = {
        let variable = UIStackView()
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.distribution = .fillEqually
        variable.axis = .vertical
        variable.spacing = 0.5
        return variable
    }()
    
    private lazy var cdbComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "CDB"), title: "CDB", subTitle: "Certificado de depósito bancário.", target: self, action: #selector(tappedCdbButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedCdbButton() {
        let vc: CdbVC = CdbVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var lcaComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "LCA"), title: "LCA", subTitle: "Letra de crédito do agronegócio.", target: self, action: #selector(tappedLcaButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedLcaButton() {
        let vc: LcaVC = LcaVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var lciComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "LCI"), title: "LCI", subTitle: "Letra de Crédito Imobiliário.", target: self, action: #selector(tappedLciButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedLciButton() {
        let vc: LciVC = LciVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var tdComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "TesouroDireto"), title: "Tesouro Direto", subTitle: "Compra e venda de Titulos publicos.", target: self, action: #selector(tappedTDButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedTDButton() {
        let vc: TesouroDiretoVC = TesouroDiretoVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var tipcaComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "TesouroIPCA"), title: "Tesouro IPCA", subTitle: "Proteção contra a Inflação.", target: self, action: #selector(tappedTIpcaButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedTIpcaButton() {
        let vc: TesouroIpcaVC = TesouroIpcaVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private lazy var tselicComponent: CustomButtonView = {
        let variable = CustomButtonView(image: UIImage(named: "TesouroSelic"), title: "Tesouro SELIC", subTitle: "Estabilidade e Liquidez.", target: self, action: #selector(tappedTSelicButton), chevron: UIImage(systemName: "chevron.right")!)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    @objc
    private func tappedTSelicButton() {
        let vc: TesouroSelicVC = TesouroSelicVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        view.addSubview(subImageView)
        view.addSubview(backButton)
        view.addSubview(titleLabel)
        view.addSubview(viewBackground)
        view.addSubview(stackEducational)
        stackEducational.addArrangedSubview(cdbComponent)
        stackEducational.addArrangedSubview(lcaComponent)
        stackEducational.addArrangedSubview(lciComponent)
        stackEducational.addArrangedSubview(tdComponent)
        stackEducational.addArrangedSubview(tipcaComponent)
        stackEducational.addArrangedSubview(tselicComponent)
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
            titleLabel.leadingAnchor.constraint(equalTo: backButton.leadingAnchor),
            
            viewBackground.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100),
            viewBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            viewBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            viewBackground.heightAnchor.constraint(equalToConstant: 384),
            
            stackEducational.topAnchor.constraint(equalTo: viewBackground.topAnchor),
            stackEducational.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor),
            stackEducational.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor),
            stackEducational.bottomAnchor.constraint(equalTo: viewBackground.bottomAnchor, constant: -15),
        ])
    }
}
