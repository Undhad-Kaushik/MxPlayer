//
//  BirthdayLiveViewController.swift
//  MxPlayer
//
//  Created by undhad kaushik on 22/03/23.
//

import UIKit

class BirthdayLiveViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        birthdayTextField.delegate = self
    }
    
    private func configurDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .dateAndTime
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: -2, to: Date())
        datePicker.minimumDate = Date()
    }
    
    func displayAlert(messege: String){
        let alert: UIAlertController = UIAlertController(title: "alert", message: messege, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "Ok", style: .default){ button in
            
        }
        alert.addAction(okButton)
        present(alert, animated: true , completion: nil)
    }
    
    // MARK: - All Buttons Navigation
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        if birthdayTextField.text == "" {
            displayAlert(messege: "Please choose your birthdate")
        }
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let navigation: EditAcoountViewController = storyBoard.instantiateViewController(withIdentifier: "EditAcoountViewController") as! EditAcoountViewController
        self.navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    @IBAction func yourBirthdaySelection(_ sender: UIDatePicker) {
        birthdayTextField.text = sender.date.convertToString(formet: "dd MMM yyyy hh:mm:ss a")
        Calendar.current.date(byAdding: .year, value: -2, to: sender.date)
    }
}

extension BirthdayLiveViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            datePicker.isHidden = false
            return false
        }
        return true
    }
}

extension String {
    func convertToString(formet: String) -> Date {
        let formetter = DateFormatter()
        formetter.dateFormat = formet
        return formetter.date(from: self) ?? Date()
    }
}

extension Date {
    func convertToString(formet: String) -> String {
        let formetter = DateFormatter()
        formetter.dateFormat = formet
        return formetter.string(from: self)
    }
}
