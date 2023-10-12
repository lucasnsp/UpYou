//
//  TesouroDiretoVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import UIKit

class TesouroDiretoVC: UIViewController {
    
    var screen: TesouroDiretoScreen?
    
    override func loadView() {
        screen = TesouroDiretoScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension TesouroDiretoVC: TesouroDiretoScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
