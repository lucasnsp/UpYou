//
//  CdbVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

class CdbVC: UIViewController {
    
    var screen: CdbScreen?
    
    override func loadView() {
        screen = CdbScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension CdbVC: CdbScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
