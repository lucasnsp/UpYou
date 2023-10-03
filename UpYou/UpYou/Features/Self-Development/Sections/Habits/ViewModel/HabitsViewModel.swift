//
//  HabitsViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

protocol HabitsViewModelDelegate: AnyObject {
    func success()
    func error()
}

class HabitsViewModel {
    
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
        return 3800
    }
    
    public func loadCurrentHabits(indexPath: IndexPath) -> Habit {
        habit[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getHabitsService { habitsData, error in
            if error == nil {
                self.habit = habitsData?.habits ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
        
    }

}
