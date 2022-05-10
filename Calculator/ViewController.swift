//
//  ViewController.swift
//  Calculator
//
//  Created by user on 2022/05/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel! //計算結果を表示する
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0 //どの四則演算かを判定
    
    //数字ボタンを押したとき
    @IBAction func select0(){
        number1 = number1*10
        label.text = String(number1)
    }
    
    @IBAction func select1(){
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2(){
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    
    @IBAction func select3(){
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4(){
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5(){
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6(){
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7(){
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8(){
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9(){
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    //演算ボタンを押した時
    @IBAction func plus(){
        number2 = number1
        number1 = 0
        ope = 1
    }
    
    @IBAction func minus(){
        number2 = number1
        number1 = 0
        ope = 2
        
    }
    
    @IBAction func multi(){
        number2 = number1
        number1 = 0
        ope = 3
    }
    
    @IBAction func divid(){
        number2 = number1
        number1 = 0
        ope = 4
        
    }
    
    //イコールボタンを押した時
    @IBAction func equal(){
        if ope == 1{
            number3 = number2 + number1
        }else if ope == 2{
            number3 = number2 - number1
        }else if ope == 3{
            number3 = number2*number1
        }else if ope == 4{
            number3 = number2/number1
            
        }
        
        label.text = String(number3)
        if number3 >= 10{
            label.textColor = UIColor.red
        }else if number3 <= -10{
            label.textColor = UIColor.blue
        }
    }
    
    @IBAction func clear(){
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.text = String(number3)
        label.textColor = UIColor.black
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

