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
        tabBar.tintColor = UIColor.white
        
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -4)
        tabBar.layer.shadowRadius = 10
        tabBar.layer.shadowOpacity = 0.8
        tabBar.layer.masksToBounds = false

        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = UIColor.black
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        
        guard let items = tabBar.items else { return }
        
        var homeIcon = items[0]
        var savingsIcon = items[1]
        var selfDevIcon = items[2]
        
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
