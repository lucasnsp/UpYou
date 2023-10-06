//
//  SleepVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import UIKit

class SleepVC: UIViewController {
    
    var screen: SleepScreen?
    
    override func loadView() {
        screen = SleepScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension SleepVC: SleepScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}
