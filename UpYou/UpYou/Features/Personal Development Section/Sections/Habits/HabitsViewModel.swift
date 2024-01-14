//
//  HabitsViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

protocol HabitsViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class HabitsViewModel {
    
    struct Constants {
        static let height: CGFloat = 3800
    }
    
    private var service: HabitsService = HabitsService()
    private var habit = [Habit]()
    
    private weak var delegate: HabitsViewModelDelegate?
    
    public func delegate(delegate: HabitsViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getHabits: [Habit] {
        habit
    }
    
    public var numberOfRowsInSection: Int {
        return habit.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentHabits(indexPath: IndexPath) -> Habit {
        habit[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getHabitsService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                habit = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }

    }

}
