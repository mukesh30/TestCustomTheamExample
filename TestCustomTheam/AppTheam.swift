//
//  AppTheam.swift
//  TestCustomTheam
//
//  Created by apple on 13/06/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
protocol ButtonTheam{
    var label:String{get set}
    var backgroundColor:UIColor {get}
    var tintColor:UIColor{get}
    
}
struct RedButtonTheam:ButtonTheam {
    var backgroundColor: UIColor = .red
    var tintColor: UIColor = .white
    var label: String
    init(label:String) {
        self.label = label
    }
}
struct ClearButtonTheam:ButtonTheam {
    var backgroundColor: UIColor = .clear
    var tintColor: UIColor = .black
    var label: String
    init(label:String) {
        self.label = label
    }
}
class LargeButton:UIButton{
    var theam:ButtonTheam?{
        didSet{
            styleTheam()
        }
    }
    private func styleTheam(){
        if let theam = theam{
            backgroundColor = theam.backgroundColor
            tintColor = theam.tintColor
            setTitle(theam.label, for: .normal)
        }
    }
}
