//
//  FirstViewController.swift
//  Converstion Calculator Tabbed
//
//  Created by weizsw on 9/7/17.
//  Copyright © 2017 Shaowei Zhou. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var firstPickerView: UIPickerView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var botLabel: UILabel!
    
    var volumeData = [["teaspoon", "tablesppon", "ounce", "cup", "pint", "quart", "gallon", "mililter", "liter"], ["teaspoon", "tablesppon", "ounce", "cup", "pint", "quart", "gallon", "mililter", "liter"]]
        var volumeAbbr = [["tsp", "tb", "oz", "cup", "pnt", "qrt", "gal", "ml", "l"], ["tsp", "tb", "oz", "cup", "pnt", "qrt", "gal", "ml", "l"]]
    var lengthData = [["inch", "foot", "yard", "mile", "milimeter", "centimeter", "meter", "kilometer"], ["inch", "foot", "yard", "mile", "milimeter", "centimeter", "meter", "kilometer"]]
    var lengthAbbr = [["in", "ft", "yrd", "mi", "mm", "cm", "m", "km"], ["in", "ft", "yrd", "mi", "mm", "cm", "m", "km"]]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstPickerView.delegate = self
        self.firstPickerView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var count = 0
        
        switch(segmentedControl.selectedSegmentIndex) {
        case 0:
            count = volumeData[component].count
            break
        case 1:
            count = lengthData[component].count
            break
        default:
            break
        }
        return count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var string = volumeData[component][row]
        
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            string = volumeData[component][row]
            break
        case 1:
            string = lengthData[component][row]
            break
        default:
            break
        }
        return string
        
    }
    
    @IBAction func segmentControl(_ sender: Any) {
        firstPickerView.reloadAllComponents()
    }
    
    @IBAction func segmentControlTapped(_ sender: Any) {
        firstPickerView.reloadAllComponents()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            if component == 0 {
                topLabel.text = volumeData[component][row]
            }
                
            else if component == 1 {
                botLabel.text = volumeData[component][row]
            }
        case 1:
            if component == 0 {
                topLabel.text = lengthData[component][row]
            }
                
            else if component == 1 {
                botLabel.text = lengthData[component][row]
            }
            
            
        default:
            break
        }
        
    }


    
    
    
    
  

    
}

