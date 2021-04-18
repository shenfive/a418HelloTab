//
//  Page2ViewController.swift
//  HelloTab
//
//  Created by 申潤五 on 2021/4/18.
//

import UIKit

class Page2ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("page 2 loadview")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello Page 2")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appeare")
    }


    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view Will Disappear")
    }

}
