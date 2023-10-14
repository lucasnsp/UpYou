//
//  StocksVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class StocksVC: UIViewController {
    
    var screen: StocksScreen?
    
    override func loadView() {
        screen = StocksScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension StocksVC: StocksScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
