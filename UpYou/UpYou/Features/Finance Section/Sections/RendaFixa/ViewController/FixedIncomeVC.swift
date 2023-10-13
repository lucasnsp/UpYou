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
        let vc: TesouroIpcaVC = TesouroIpcaVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedTesouroDiretoButton() {
        let vc: TesouroDiretoVC = TesouroDiretoVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedLciButton() {
        let vc: LciVC = LciVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedLcaButton() {
        let vc: LcaVC = LcaVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)   
    }
    
    func tappedCdbButton() {
        let vc: CdbVC = CdbVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func tappedBackButton() {
        dismiss(animated: true)
    }
}
