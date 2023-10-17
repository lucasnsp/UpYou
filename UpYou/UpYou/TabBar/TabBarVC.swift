//
//  CustomTabBarController.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBar()
    }
    
    private func setupBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        let savings = UINavigationController(rootViewController: SavingMoneyVC())
        let selfDev = UINavigationController(rootViewController: PersonalDevelopmentVC())
        
        setViewControllers([home, savings, selfDev], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.white

        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        
        guard let items = tabBar.items else { return }
        
        let homeIcon = items[0]
        let savingsIcon = items[1]
        let selfDevIcon = items[2]
        
        homeIcon.image = UIImage(systemName: "building.columns.fill")
        homeIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        homeIcon.title = nil
        
        savingsIcon.image = UIImage(systemName: "dollarsign.arrow.circlepath")
        savingsIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        savingsIcon.title = nil
        
        selfDevIcon.image = UIImage(systemName: "figure.mind.and.body")
        selfDevIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        selfDevIcon.title = nil
    }
}
