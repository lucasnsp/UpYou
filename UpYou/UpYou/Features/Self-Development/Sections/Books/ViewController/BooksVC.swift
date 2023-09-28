//
//  BooksVC.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 28/09/23.
//

import UIKit

class BooksVC: UIViewController {
    
    var screen: BooksScreen?
    
    override func loadView() {
        screen = BooksScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }

}

extension BooksVC: BooksScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
    
    
}
