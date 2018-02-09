//
//  ViewController.swift
//  app-window
//
//  Created by Memet RIZA on 10/02/2018.
//  Copyright © 2018 Memet RIZA. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: Currency!
    @IBOutlet weak var itemTxt: Currency!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6005039811, blue: 0, alpha: 1)
        calcBtn.setTitle("Hesapla", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        print("Wohoo")
    }


}

