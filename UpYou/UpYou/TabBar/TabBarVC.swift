//
//  CustomTabBarController.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBar()
    }
    
    private func setupBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        let savings = UINavigationController(rootViewController: OnboardingSavesVC())
        let selfDev = UINavigationController(rootViewController: SelfDevelopmentViewController())
        
        setViewControllers([home, savings, selfDev], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor.black
        
        tabBar.layer.shadowColor = UIColor.lightGray.withAlphaComponent(0.8).cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -4)
        tabBar.layer.shadowRadius = 10
        tabBar.layer.shadowOpacity = 0.8
        tabBar.layer.masksToBounds = false

        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor.white
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        
        guard let items = tabBar.items else { return }
        
        let homeIcon = items[0]
        let savingsIcon = items[1]
        let selfDevIcon = items[2]
        
        homeIcon.image = UIImage(systemName: "house.fill")
        homeIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        homeIcon.title = nil
        
        savingsIcon.image = UIImage(systemName: "wallet.pass.fill")
        savingsIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        savingsIcon.title = nil
        
        selfDevIcon.image = UIImage(systemName: "star.fill")
        selfDevIcon.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        selfDevIcon.title = nil
    }
}
