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
    
    @IBOutlet weak var resultHours: UILabel!
    @IBOutlet weak var hourLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6005039811, blue: 0, alpha: 1)
        calcBtn.setTitle("Hesapla", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        itemTxt.inputAccessoryView = calcBtn
        
        resultHours.isHidden = true
        hourLbl.isHidden = true
    }

    @objc func calculate(){
        if let wageVar = wageTxt.text , let priceVar = itemTxt.text{
            if let wage = Double(wageVar), let price = Double(priceVar){
                view.endEditing(true)
                resultHours.isHidden = false
                hourLbl.isHidden = false
                resultHours.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalculator(_ sender: Any) {
        resultHours.isHidden = true
        hourLbl.isHidden = true
        wageTxt.text = ""
        itemTxt.text = ""
    }
    
}

