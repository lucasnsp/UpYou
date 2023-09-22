//
//  SelfDevelopmentViewController.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 22/09/23.
//

import UIKit

class SelfDevelopmentViewController: UIViewController {
    
    var screen: SelfDevelopmentScreen?

    override func loadView() {
        screen = SelfDevelopmentScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
