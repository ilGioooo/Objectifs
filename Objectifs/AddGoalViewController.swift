//
//  AddGoalViewController.swift
//  Objectifs
//
//  Created by Johan GALAS on 4/20/20.
//  Copyright © 2020 Johan GALAS. All rights reserved.
//

import UIKit

class AddGoalViewController: UIViewController {

    var goalManager: GoalsManager?
    
    @IBOutlet weak var newGoalTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelGoal(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addGoal(_ sender: Any) {
        if let text = newGoalTextField.text , !text.isEmpty {
            goalManager?.addGoal(text)
            navigationController?.popViewController(animated: true)
        }else {
            let title = "Objectif manquant"
            let message = "Veuillez saisir un objectif"
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
        }
        
       
    }
    

}
