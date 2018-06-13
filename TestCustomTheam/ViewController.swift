//
//  ViewController.swift
//  TestCustomTheam
//
//  Created by apple on 13/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clearButton: LargeButton!
    @IBOutlet weak var backButton: LargeButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        clearButton.theam = ClearButtonTheam(label: "Clear")
        backButton.theam = RedButtonTheam(label: "Red")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

