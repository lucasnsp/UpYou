//
//  FixedIncomeScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

protocol FixedIncomeScreenDelegate: AnyObject {
    func tappedBackButton()
    func tappedCdbButton()
    func tappedLcaButton()
    func tappedLciButton()
    func tappedTesouroDiretoButton()
    func tappedTesouroIpcaButton()
    func tappedTesouroSelicButton()
}

class FixedIncomeScreen: UIView {
    
    private weak var delegate: FixedIncomeScreenDelegate?
    
    public func delegate(delegate: FixedIncomeScreenDelegate?) {
        self.delegate = delegate
    }

    private lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background")
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
    func tappedBackButton() {
        delegate?.tappedBackButton()
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
    
    private lazy var cdbImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "CDB")
        return imageView
    }()
    
    private lazy var cdbTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "CDB"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var cdbSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Certificado de depósito bancário."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var cdbButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedCdbButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedCdbButton() {
        delegate?.tappedCdbButton()
    }
    
    private lazy var lcaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "LCA")
        return imageView
    }()
    
    private lazy var lcaTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "LCA"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var lcaSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Letra de crédito do agronegócio."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var lcaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedLcaButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedLcaButton() {
        delegate?.tappedLcaButton()
    }
    
    private lazy var lciImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "LCI")
        return imageView
    }()
    
    private lazy var lciTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "LCI"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var lciSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Letra de Crédito Imobiliário."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var lciButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedLciButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedLciButton() {
        delegate?.tappedLciButton()
    }
    
    private lazy var tesouroDiretoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "TesouroDireto")
        return imageView
    }()
    
    private lazy var tesouroDiretoTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Tesouro Direto"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroDiretoSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Compra e venda de Titulos publicos."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroDiretoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedTesouroDiretoButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedTesouroDiretoButton() {
        delegate?.tappedTesouroDiretoButton()
    }
    
    private lazy var tesouroIpcaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "TesouroIPCA")
        return imageView
    }()
    
    private lazy var tesouroIpcaTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Tesouro IPCA"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroIpcaSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Proteção contra a Inflação."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroIpcaButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedTesouroIpcaButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedTesouroIpcaButton() {
        delegate?.tappedTesouroIpcaButton()
    }
    
    private lazy var tesouroSelicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "TesouroSelic")
        return imageView
    }()
    
    private lazy var tesouroSelicTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Tesouro SELIC"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroSelicSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Estabilidade e Liquidez."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var tesouroSelicButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedTesouroSelicButton), for: .touchUpInside)
        button.tintColor = UIColor.white
        return button
    }()
    
    @objc
    func tappedTesouroSelicButton() {
        delegate?.tappedTesouroSelicButton()
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(subImageView)
        addSubview(backButton)
        addSubview(titleLabel)
        addSubview(viewBackground)
        viewBackground.addSubview(cdbTitleLabel)
        viewBackground.addSubview(cdbSubTitlelabel)
        viewBackground.addSubview(cdbImageView)
        viewBackground.addSubview(cdbButton)
        viewBackground.addSubview(lcaTitleLabel)
        viewBackground.addSubview(lcaSubTitlelabel)
        viewBackground.addSubview(lcaImageView)
        viewBackground.addSubview(lcaButton)
        viewBackground.addSubview(lciTitleLabel)
        viewBackground.addSubview(lciSubTitlelabel)
        viewBackground.addSubview(lciImageView)
        viewBackground.addSubview(lciButton)
        viewBackground.addSubview(tesouroDiretoTitleLabel)
        viewBackground.addSubview(tesouroDiretoSubTitlelabel)
        viewBackground.addSubview(tesouroDiretoImageView)
        viewBackground.addSubview(tesouroDiretoButton)
        viewBackground.addSubview(tesouroIpcaTitleLabel)
        viewBackground.addSubview(tesouroIpcaSubTitlelabel)
        viewBackground.addSubview(tesouroIpcaImageView)
        viewBackground.addSubview(tesouroIpcaButton)
        viewBackground.addSubview(tesouroSelicTitleLabel)
        viewBackground.addSubview(tesouroSelicSubTitlelabel)
        viewBackground.addSubview(tesouroSelicImageView)
        viewBackground.addSubview(tesouroSelicButton)

    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: backButton.leadingAnchor),
            
            viewBackground.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100),
            viewBackground.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            viewBackground.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            viewBackground.heightAnchor.constraint(equalToConstant: 384),
            
            cdbImageView.topAnchor.constraint(equalTo: viewBackground.topAnchor, constant: 20),
            cdbImageView.leadingAnchor.constraint(equalTo: viewBackground.leadingAnchor, constant: 12),
            cdbImageView.heightAnchor.constraint(equalToConstant: 40),
            cdbImageView.widthAnchor.constraint(equalToConstant: 40),
            
            cdbTitleLabel.topAnchor.constraint(equalTo: cdbImageView.topAnchor),
            cdbTitleLabel.leadingAnchor.constraint(equalTo: cdbImageView.trailingAnchor, constant: 15),
            
            cdbSubTitlelabel.topAnchor.constraint(equalTo: cdbTitleLabel.bottomAnchor, constant: 5),
            cdbSubTitlelabel.leadingAnchor.constraint(equalTo: cdbTitleLabel.leadingAnchor),
            
            cdbButton.topAnchor.constraint(equalTo: cdbImageView.topAnchor, constant: 12),
            cdbButton.trailingAnchor.constraint(equalTo: viewBackground.trailingAnchor, constant: -12),
            cdbButton.heightAnchor.constraint(equalToConstant: 40),
            cdbButton.widthAnchor.constraint(equalToConstant: 40),
            
            lcaImageView.topAnchor.constraint(equalTo: cdbImageView.bottomAnchor, constant: 20),
            lcaImageView.leadingAnchor.constraint(equalTo: cdbImageView.leadingAnchor),
            lcaImageView.heightAnchor.constraint(equalTo: cdbImageView.heightAnchor),
            lcaImageView.widthAnchor.constraint(equalTo: cdbImageView.widthAnchor),
            
            lcaTitleLabel.topAnchor.constraint(equalTo: lcaImageView.topAnchor),
            lcaTitleLabel.leadingAnchor.constraint(equalTo: lcaImageView.trailingAnchor, constant: 15),
            
            lcaSubTitlelabel.topAnchor.constraint(equalTo: lcaTitleLabel.bottomAnchor, constant: 5),
            lcaSubTitlelabel.leadingAnchor.constraint(equalTo: lcaTitleLabel.leadingAnchor),
            
            lcaButton.topAnchor.constraint(equalTo: lcaImageView.topAnchor, constant: 12),
            lcaButton.trailingAnchor.constraint(equalTo: cdbButton.trailingAnchor),
            lcaButton.heightAnchor.constraint(equalTo: cdbButton.heightAnchor),
            lcaButton.widthAnchor.constraint(equalTo: cdbButton.widthAnchor),
            
            lciImageView.topAnchor.constraint(equalTo: lcaImageView.bottomAnchor, constant: 20),
            lciImageView.leadingAnchor.constraint(equalTo: cdbImageView.leadingAnchor),
            lciImageView.heightAnchor.constraint(equalTo: cdbImageView.heightAnchor),
            lciImageView.widthAnchor.constraint(equalTo: cdbImageView.widthAnchor),
            
            lciTitleLabel.topAnchor.constraint(equalTo: lciImageView.topAnchor),
            lciTitleLabel.leadingAnchor.constraint(equalTo: lciImageView.trailingAnchor, constant: 15),
            
            lciSubTitlelabel.topAnchor.constraint(equalTo: lciTitleLabel.bottomAnchor, constant: 5),
            lciSubTitlelabel.leadingAnchor.constraint(equalTo: lciTitleLabel.leadingAnchor),
            
            lciButton.topAnchor.constraint(equalTo: lciImageView.topAnchor, constant: 12),
            lciButton.trailingAnchor.constraint(equalTo: cdbButton.trailingAnchor),
            lciButton.heightAnchor.constraint(equalTo: cdbButton.heightAnchor),
            lciButton.widthAnchor.constraint(equalTo: cdbButton.widthAnchor),
            
            tesouroDiretoImageView.topAnchor.constraint(equalTo: lciImageView.bottomAnchor, constant: 20),
            tesouroDiretoImageView.leadingAnchor.constraint(equalTo: cdbImageView.leadingAnchor),
            tesouroDiretoImageView.heightAnchor.constraint(equalTo: cdbImageView.heightAnchor),
            tesouroDiretoImageView.widthAnchor.constraint(equalTo: cdbImageView.widthAnchor),
            
            tesouroDiretoTitleLabel.topAnchor.constraint(equalTo: tesouroDiretoImageView.topAnchor),
            tesouroDiretoTitleLabel.leadingAnchor.constraint(equalTo: tesouroDiretoImageView.trailingAnchor, constant: 15),
            
            tesouroDiretoSubTitlelabel.topAnchor.constraint(equalTo: tesouroDiretoTitleLabel.bottomAnchor, constant: 5),
            tesouroDiretoSubTitlelabel.leadingAnchor.constraint(equalTo: tesouroDiretoTitleLabel.leadingAnchor),
            
            tesouroDiretoButton.topAnchor.constraint(equalTo: tesouroDiretoImageView.topAnchor, constant: 12),
            tesouroDiretoButton.trailingAnchor.constraint(equalTo: cdbButton.trailingAnchor),
            tesouroDiretoButton.heightAnchor.constraint(equalTo: cdbButton.heightAnchor),
            tesouroDiretoButton.widthAnchor.constraint(equalTo: cdbButton.widthAnchor),
            
            tesouroIpcaImageView.topAnchor.constraint(equalTo: tesouroDiretoImageView.bottomAnchor, constant: 20),
            tesouroIpcaImageView.leadingAnchor.constraint(equalTo: cdbImageView.leadingAnchor),
            tesouroIpcaImageView.heightAnchor.constraint(equalTo: cdbImageView.heightAnchor),
            tesouroIpcaImageView.widthAnchor.constraint(equalTo: cdbImageView.widthAnchor),
            
            tesouroIpcaTitleLabel.topAnchor.constraint(equalTo: tesouroIpcaImageView.topAnchor),
            tesouroIpcaTitleLabel.leadingAnchor.constraint(equalTo: tesouroIpcaImageView.trailingAnchor, constant: 15),
            
            tesouroIpcaSubTitlelabel.topAnchor.constraint(equalTo: tesouroIpcaTitleLabel.bottomAnchor, constant: 5),
            tesouroIpcaSubTitlelabel.leadingAnchor.constraint(equalTo: tesouroIpcaTitleLabel.leadingAnchor),
            
            tesouroIpcaButton.topAnchor.constraint(equalTo: tesouroIpcaImageView.topAnchor, constant: 12),
            tesouroIpcaButton.trailingAnchor.constraint(equalTo: cdbButton.trailingAnchor),
            tesouroIpcaButton.heightAnchor.constraint(equalTo: cdbButton.heightAnchor),
            tesouroIpcaButton.widthAnchor.constraint(equalTo: cdbButton.widthAnchor),
            
            tesouroSelicImageView.topAnchor.constraint(equalTo: tesouroIpcaImageView.bottomAnchor, constant: 20),
            tesouroSelicImageView.leadingAnchor.constraint(equalTo: cdbImageView.leadingAnchor),
            tesouroSelicImageView.heightAnchor.constraint(equalTo: cdbImageView.heightAnchor),
            tesouroSelicImageView.widthAnchor.constraint(equalTo: cdbImageView.widthAnchor),
            
            tesouroSelicTitleLabel.topAnchor.constraint(equalTo: tesouroSelicImageView.topAnchor),
            tesouroSelicTitleLabel.leadingAnchor.constraint(equalTo: tesouroSelicImageView.trailingAnchor, constant: 15),
            
            tesouroSelicSubTitlelabel.topAnchor.constraint(equalTo: tesouroSelicTitleLabel.bottomAnchor, constant: 5),
            tesouroSelicSubTitlelabel.leadingAnchor.constraint(equalTo: tesouroSelicTitleLabel.leadingAnchor),
            
            tesouroSelicButton.topAnchor.constraint(equalTo: tesouroSelicImageView.topAnchor, constant: 12),
            tesouroSelicButton.trailingAnchor.constraint(equalTo: cdbButton.trailingAnchor),
            tesouroSelicButton.heightAnchor.constraint(equalTo: cdbButton.heightAnchor),
            tesouroSelicButton.widthAnchor.constraint(equalTo: cdbButton.widthAnchor),

        ])
    }

}
