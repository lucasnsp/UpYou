//
//  PersonalDevelopmentVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 23/09/23.
//

import UIKit

class PersonalDevelopmentVC: UIViewController {
    
    var screen: PersonalDevelopmentScreen?
    
    override func loadView() {
        screen = PersonalDevelopmentScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension PersonalDevelopmentVC: PersonalDevelopmentScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
