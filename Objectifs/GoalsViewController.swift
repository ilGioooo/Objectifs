//
//  ViewController.swift
//  Objectifs
//
//  Created by Johan GALAS on 4/19/20.
//  Copyright © 2020 Johan GALAS. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController {
    
    @IBOutlet weak var GoalTableView: UITableView!
    let goalManager = GoalsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GoalTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AddGoalViewController {
            destination.goalManager = goalManager
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        GoalTableView.reloadData()
    }

}

extension GoalsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goalManager.getGoalCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath)
        let goal = goalManager.getGoal(index: indexPath.row)
        cell.textLabel?.text = goal.title
        
        
    return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        goalManager.removeGoal(indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    
}
