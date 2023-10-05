//
//  StoicismVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

class StoicismVC: UIViewController {
    
    var screen: StoicismScreen?
    
    override func loadView() {
        screen = StoicismScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension StoicismVC: StoicismScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
