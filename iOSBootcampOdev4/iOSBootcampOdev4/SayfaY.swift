//
//  SayfaY.swift
//  iOSBootcampOdev4
//
//  Created by Davut Karakuş on 15.01.2023.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func anaSayfayaDonButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true) 
    }
}
