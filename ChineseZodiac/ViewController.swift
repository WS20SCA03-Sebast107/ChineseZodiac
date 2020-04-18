//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Sebastian Derosa on 4/18/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let s: String = textField.text!;
        if Int(s) == nil {
            label.text = "Sorry, \(s) wasn't an int.  Try again.";
        } else {
            textField.resignFirstResponder();
        }
        return true;   //Always return true from this method.
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        let year: Int = Int(s)!;
        let animal: String;   //uninitialized
        
        switch year % 12 {
            case 0:
            animal = "monkey";
            case 1:
            animal = "rooster";
            case 2:
            animal = "dog";
            case 3:
            animal = "pig";
            case 4:
            animal = "rat";
            case 5:
            animal = "ox";
            case 6:
            animal = "tiger";
            case 7:
            animal = "hare";
            case 8:
            animal = "dragon";
            case 9:
            animal = "snake";
            case 10:
            animal = "horse";
            case 11:
            animal = "sheep";
            default:
            animal = "";
        }
        
        if animal == "" {
            label.text = "Bad division: \(year) % 12 = \(year % 12)"; //should never happen
        } else {
            label.text = "\(year) is the year of the \(animal).";
        }
    }

}

