//
//  PersonalDevelopmentScreen.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 23/09/23.
//

import UIKit

protocol PersonalDevelopmentScreenDelegate: AnyObject {
    func tappedBackButton()
}

class PersonalDevelopmentScreen: UIView {
    
    private weak var delegate: PersonalDevelopmentScreenDelegate?
    
    public func delegate(delegate: PersonalDevelopmentScreenDelegate?) {
        self.delegate = delegate
    }
    
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc
    func tappedBackButton() {
        delegate?.tappedBackButton()
    }
    
    lazy var meditationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 16
        imageView.image = UIImage(named: "mulher_meditando1")
        return imageView
    }()
    
    lazy var viewMidBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 14
        return view
    }()
    
    lazy var targetImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "target")
        return imageView
    }()
    
    lazy var deepWorkTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Deep Work"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var deepWorkSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Understand the power of deep focus."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var deepWorkButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedDeepWorkButton), for: .touchUpInside)
        button.tintColor = UIColor.black
        return button
    }()
    
    @objc
    func tappedDeepWorkButton() {
        print(#function)
    }
    
    lazy var habitImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 14
        imageView.image = UIImage(named: "train")
        return imageView
    }()
    
    lazy var habitTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Habits"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .left
        return label
    }()
    
    lazy var habitSubTitlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Good habits will change your life."
        label.font = UIFont.systemFont(ofSize: 13)
        label.textAlignment = .left
        return label
    }()
    
    lazy var habitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        button.addTarget(self, action: #selector(tappedHabitButton), for: .touchUpInside)
        button.tintColor = UIColor.black
        return button
    }()
    
    @objc
    func tappedHabitButton() {
        print(#function)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white.withAlphaComponent(0.92)
        addViews()
        configConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews() {
        addSubview(backButton)
        addSubview(meditationImageView)
        addSubview(viewMidBackground)
        viewMidBackground.addSubview(targetImageView)
        viewMidBackground.addSubview(deepWorkTitleLabel)
        viewMidBackground.addSubview(deepWorkSubTitlelabel)
        viewMidBackground.addSubview(deepWorkButton)
        viewMidBackground.addSubview(habitImageView)
        viewMidBackground.addSubview(habitTitleLabel)
        viewMidBackground.addSubview(habitSubTitlelabel)
        viewMidBackground.addSubview(habitButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            
            meditationImageView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 25),
            meditationImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            meditationImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            meditationImageView.heightAnchor.constraint(equalToConstant: 230),
            
            viewMidBackground.topAnchor.constraint(equalTo: meditationImageView.bottomAnchor, constant: 40),
            viewMidBackground.leadingAnchor.constraint(equalTo: meditationImageView.leadingAnchor),
            viewMidBackground.trailingAnchor.constraint(equalTo: meditationImageView.trailingAnchor),
            viewMidBackground.heightAnchor.constraint(equalToConstant: 195),
            
            targetImageView.topAnchor.constraint(equalTo: viewMidBackground.topAnchor, constant: 15),
            targetImageView.leadingAnchor.constraint(equalTo: viewMidBackground.leadingAnchor, constant: 12),
            targetImageView.heightAnchor.constraint(equalToConstant: 40),
            targetImageView.widthAnchor.constraint(equalToConstant: 40),
            
            deepWorkTitleLabel.topAnchor.constraint(equalTo: targetImageView.topAnchor),
            deepWorkTitleLabel.leadingAnchor.constraint(equalTo: targetImageView.trailingAnchor, constant: 15),
            
            deepWorkSubTitlelabel.topAnchor.constraint(equalTo: deepWorkTitleLabel.bottomAnchor, constant: 5),
            deepWorkSubTitlelabel.leadingAnchor.constraint(equalTo: deepWorkTitleLabel.leadingAnchor),
            
            deepWorkButton.topAnchor.constraint(equalTo: viewMidBackground.topAnchor, constant: 25),
            deepWorkButton.trailingAnchor.constraint(equalTo: viewMidBackground.trailingAnchor, constant: -12),
            deepWorkButton.heightAnchor.constraint(equalToConstant: 20),
            deepWorkButton.widthAnchor.constraint(equalToConstant: 20),
            
            habitImageView.topAnchor.constraint(equalTo: targetImageView.bottomAnchor, constant: 20),
            habitImageView.leadingAnchor.constraint(equalTo: targetImageView.leadingAnchor),
            habitImageView.heightAnchor.constraint(equalToConstant: 40),
            habitImageView.widthAnchor.constraint(equalToConstant: 40),
            
            habitTitleLabel.topAnchor.constraint(equalTo: habitImageView.topAnchor),
            habitTitleLabel.leadingAnchor.constraint(equalTo: habitImageView.trailingAnchor, constant: 15),
            
            habitSubTitlelabel.topAnchor.constraint(equalTo: habitTitleLabel.bottomAnchor, constant: 5),
            habitSubTitlelabel.leadingAnchor.constraint(equalTo: habitTitleLabel.leadingAnchor),
            
            habitButton.topAnchor.constraint(equalTo: habitImageView.topAnchor, constant: 12),
            habitButton.trailingAnchor.constraint(equalTo: deepWorkButton.trailingAnchor),
            habitButton.heightAnchor.constraint(equalToConstant: 20),
            habitButton.widthAnchor.constraint(equalToConstant: 20),
        ])
    }
    
}
