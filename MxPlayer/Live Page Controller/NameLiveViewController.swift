//
//  NameLiveViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit

class NameLiveViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var deleteButtton: UIButton!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    // MARK: - All Buttons Navigation
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        if nameTextField.text == "" {
            displayAlert(messege: "Please enter your name")
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
    }
    
    func displayAlert(messege: String){
        let alert: UIAlertController = UIAlertController(title: "alert", message: messege, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "Ok", style: .default){ button in
            
        }
        alert.addAction(okButton)
        present(alert, animated: true , completion: nil)
    }
    
    
    @IBAction func deleteButtonClicked(_ sender: UIButton) {
        
    }
}
