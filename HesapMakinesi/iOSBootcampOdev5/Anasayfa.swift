//
//  ViewController.swift
//  iOSBootcampOdev5
//
//  Created by Davut Karakuş on 18.01.2023.
//

import UIKit

class AnaSayfa: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var buttonDif: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonVirgul: UIButton!
    @IBOutlet weak var buttonEsittir: UIButton!
    @IBOutlet weak var labelText: UILabel!
    var sayi1:Double?
    var sayi2:Double?
    var operasyonGlobal:String?
    var operasyonGlobal2:String?
    var esittirTiklandi:Bool?
    var doubleSayi:Bool?
    var myText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRadius(button: button1)
        buttonRadius(button: button2)
        buttonRadius(button: button3)
        buttonRadius(button: buttonPlus)
        buttonRadius(button: button4)
        buttonRadius(button: button5)
        buttonRadius(button: button6)
        buttonRadius(button: buttonDif)
        buttonRadius(button: button7)
        buttonRadius(button: button8)
        buttonRadius(button: button9)
        buttonRadius(button: buttonAC)
        buttonRadius(button: buttonVirgul)
        buttonRadius(button: buttonEsittir)
        button0.layer.cornerRadius = button0.frame.size.width / 4
        button0.layer.masksToBounds = true
    }
    
    func buttonRadius(button:UIButton){
        button.layer.cornerRadius = button.frame.size.width / 2
        button.layer.masksToBounds = true
    }
    
    @IBAction func button0Tiklandi(_ sender: Any) {
        sayiYap(sayi: "0")
    }
    
    @IBAction func buttonVirgulTiklandi(_ sender: Any) {
        doubleSayi = true
        sayiYap(sayi: ".")
        
    }
    @IBAction func buttonEsittirTiklandi(_ sender: Any) {
        buttonDif.tintColor = UIColor.white
        buttonDif.backgroundColor = UIColor.orange
        buttonPlus.tintColor = UIColor.white
        buttonPlus.backgroundColor = UIColor.orange
        esittirTiklandi = true
            if sayi1 != nil && sayi2 != nil {
                sonucAl(sayiBir: sayi1!, sayiIki: sayi2!)
            }else if sayi1 == nil && sayi2 == nil {
                sonucAl(sayiBir: 0, sayiIki: 0)
            }
        else if  sayi1 != nil && sayi2 == nil && labelText.text == nil{
                sonucAl(sayiBir: sayi1!, sayiIki: 0)
            }
        else {
            if let s2 = labelText.text {
                sonucAl(sayiBir: sayi1!, sayiIki: Double(s2)!)
            }
            
        }
       
    }
    
    @IBAction func button1Tiklandi(_ sender: Any) {
        sayiYap(sayi: "1")
    }
    @IBAction func button2Tiklandi(_ sender: Any) {
        sayiYap(sayi: "2")
    }
    @IBAction func button3Tiklandi(_ sender: Any) {
        sayiYap(sayi: "3")
    }
    @IBAction func buttonPlusTiklandi(_ sender: Any) {
        buttonDif.tintColor = UIColor.white
        buttonDif.backgroundColor = UIColor.orange
        buttonPlus.tintColor = UIColor.orange
        buttonPlus.backgroundColor = UIColor.white
            
            if let s1 = labelText.text {
                if sayi1 == nil  || esittirTiklandi == true  {
                        sayi1 = Double(s1)
                        myText = ""
                        operasyonGlobal = "+"
                        esittirTiklandi = false
                    }
                else{
                    myText = ""
                    sayi2 = Double(s1)
                    operasyonGlobal2 = "+"
                    sonucAl(sayiBir: sayi1!, sayiIki: sayi2!)
                }
            }
    }
    @IBAction func button4Tiklandi(_ sender: Any) {
        sayiYap(sayi: "4")
    }
    @IBAction func button5Tiklandi(_ sender: Any) {
        sayiYap(sayi: "5")
    }
    @IBAction func button6Tiklandi(_ sender: Any) {
        sayiYap(sayi: "6")
    }
    @IBAction func buttonDifTiklandi(_ sender: Any) {
        buttonPlus.tintColor = UIColor.white
        buttonPlus.backgroundColor = UIColor.orange
        buttonDif.tintColor = UIColor.orange
        buttonDif.backgroundColor = UIColor.white
            if let s1 = labelText.text {
                if sayi1 == nil || esittirTiklandi == true {
                        myText = ""
                        sayi1 = Double(s1)
                        operasyonGlobal = "-"
                        esittirTiklandi = false
                        
                    }
                else {
                    myText = ""
                    sayi2 = Double(s1)
                    operasyonGlobal2 = "-"
                    sonucAl(sayiBir: sayi1!, sayiIki: sayi2!)
                    
                }
            }
        
    }
    @IBAction func button7Tiklandi(_ sender: Any) {
        sayiYap(sayi: "7")
    }
    @IBAction func button8Tiklandi(_ sender: Any) {
        sayiYap(sayi: "8")
    }
    @IBAction func button9Tiklandi(_ sender: Any) {
        sayiYap(sayi: "9")
    }
    @IBAction func buttonACTiklandi(_ sender: Any) {
        buttonDif.tintColor = UIColor.white
        buttonDif.backgroundColor = UIColor.orange
        buttonPlus.tintColor = UIColor.white
        buttonPlus.backgroundColor = UIColor.orange
        sayi1 = nil
        sayi2 = nil
        myText = ""
        labelText.text = "0"
        doubleSayi = nil
    }
    func sonucAl(sayiBir:Double,sayiIki:Double) {
        if operasyonGlobal == "+" {
            if doubleSayi == true {
                labelText.text = String(Double(sayiBir+sayiIki))
            }else {
                labelText.text = String(Int(sayiBir+sayiIki))
            }
            
            sayi1 = sayiBir + sayiIki
            sayi2 = nil
            operasyonGlobal = operasyonGlobal2
        }
        else if operasyonGlobal == "-" {
            if doubleSayi == true {
                labelText.text = String(Double(sayiBir-sayiIki))
            }
            else {
                labelText.text = String(Int(sayiBir-sayiIki))
            }
            sayi1 = sayiBir - sayiIki
            sayi2 = nil
            operasyonGlobal = operasyonGlobal2
        }
    }
    func sayiYap(sayi:String){
        buttonDif.tintColor = UIColor.white
        buttonDif.backgroundColor = UIColor.orange
        buttonPlus.tintColor = UIColor.white
        buttonPlus.backgroundColor = UIColor.orange
        if myText == "" {
            myText = sayi
            labelText.text = sayi
           
        }
        else {
            labelText.text?.append(sayi)
        }
    }
    
}

