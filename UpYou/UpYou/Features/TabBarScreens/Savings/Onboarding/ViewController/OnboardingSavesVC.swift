//
//  OnboardingSavesVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 21/09/23.
//

import UIKit

class OnboardingSavesVC: UIViewController {
    
    var screen: OnboardingSavesScreen?

    override func loadView() {
        screen = OnboardingSavesScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
        tabBarController?.tabBar.isTranslucent = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension OnboardingSavesVC: OnboardingSavesScreenDelegate {
    func tappedCloseButton() {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tappedContinueButton() {
        print(#function)
    }
    
    
}