//
//  GoalsManager.swift
//  Objectifs
//
//  Created by Johan GALAS on 4/19/20.
//  Copyright © 2020 Johan GALAS. All rights reserved.
//

import Foundation
class GoalsManager {
    private var goals : [Goal]
    init() {
        goals = [
        Goal(title: "Finir la formation"),
        Goal(title: "Finir MGS V"),
        Goal(title: "Platiner FF XII")]
    }
}

extension GoalsManager {
    func getGoalCount() -> Int {
        return goals.count
    }
    func getGoal(index:Int)-> Goal {
        return goals[index]
    }
    func addGoal(_ title:String){
        let goal = Goal(title: title)
        goals.append(goal)
    }
    func removeGoal(_ index: Int){
        goals.remove(at: index)
    }
}
