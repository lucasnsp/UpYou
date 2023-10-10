//
//  FixedIncomeVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

class FixedIncomeVC: UIViewController {
    
    var screen: FixedIncomeScreen?
    
    override func loadView() {
        screen = FixedIncomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension FixedIncomeVC: FixedIncomeScreenDelegate {
    func tappedTesouroSelicButton() {
        print(#function)
    }
    
    func tappedTesouroIpcaButton() {
        print(#function)
    }
    
    func tappedTesouroDiretoButton() {
        print(#function)
    }
    
    func tappedLciButton() {
        print(#function)
    }
    
    func tappedLcaButton() {
        print(#function)
    }
    
    func tappedCdbButton() {
        print(#function)
    }
    
    func tappedBackButton() {
        dismiss(animated: true)
    }
}
