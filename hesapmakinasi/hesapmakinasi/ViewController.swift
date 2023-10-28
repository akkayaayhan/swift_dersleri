//
//  ViewController.swift
//  hesapmakinasi
//
//  Created by ayhanakkaya on 3.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var txt2: UITextField!
    
    var sonuc=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnHesapla(_ sender: Any) {
        
        if let sayi1=Double(txt1.text!){
            if let sayi2=Double(txt2.text!){
                sonuc=sayi1+sayi2
                lbl1.text=String(sonuc)
            }
        }
    }
    
    
    @IBAction func btnciikar(_ sender: Any) {
        
        if let sayi1=Double(txt1.text!){
            if let sayi2=Double(txt2.text!){
                sonuc=sayi1-sayi2
                lbl1.text=String(sonuc)
            }
        }
    }
}

