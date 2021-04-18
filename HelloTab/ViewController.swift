//
//  ViewController.swift
//  HelloTab
//
//  Created by 申潤五 on 2021/4/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let def = UserDefaults.standard
        let value = def.value(forKey: "lastInputDate")
        if let date  =  value as? Date{
            let formater = DateFormatter()
            formater.dateFormat = "yyyy-MM-dd a hh:mm:ss"
            formater.locale = Locale.init(identifier: "zh-hant")
            let dateString = formater.string(from: date)
            displayLabel.text = dateString
        }
    }
    @IBAction func dateSelect(_ sender: UIDatePicker) {
        let dateSelected = sender.date
        let def = UserDefaults.standard
        def.setValue(dateSelected, forKey: "lastInputDate")
        def.synchronize()
        let formater = DateFormatter()
        formater.dateFormat = "yyyy-MM-dd a hh:mm:ss"
        formater.locale = Locale.init(identifier: "zh-hant")
        let dateString = formater.string(from: dateSelected)
        
        displayLabel.text = dateString

    }
    
}

