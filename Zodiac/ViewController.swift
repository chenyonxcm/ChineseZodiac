//
//  ViewController.swift
//  Zodiac
//
//  Created by chenyong on 17/6/30.
//  Copyright © 2017年 chenyong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    
    @IBOutlet weak var zodiacText: UITextField!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func OkTapped(_ sender: Any) {

        yearOfBirth.resignFirstResponder()
        
        if let year = Int(yearOfBirth.text!) {
            // 计算生肖
           let count = (year - offset) % 12
            switch count {
            case 0:
                zodiacText.text = "鼠"
                break
            case 1:
                zodiacText.text = "牛"
                break
            case 2:
                zodiacText.text = "虎"
                break
            case 3:
                zodiacText.text = "兔"
              break
            case 4:
                zodiacText.text = "龙"
                break
            case 5:
                zodiacText.text = "蛇"
                break
            case 6:
                zodiacText.text = "马"
                break
            case 7:
                zodiacText.text = "羊"
                break
            case 8:
                zodiacText.text = "猴"
                break
            case 9:
                zodiacText.text = "鸡"
                break
            case 10:
                zodiacText.text = "狗"
                break
            case 11:
                zodiacText.text = "猪"
                break
            default:
                break
            }
        } else {
            // 提醒用户不存在
        }
    }
}

