//
//  ViewController.swift
//  iOSBootcampOdev3
//
//  Created by Davut Karakuş on 12.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTf: UITextField!
    
    @IBOutlet weak var passwordTf: UITextField!
    
    override func viewDidLoad() {
        self.navigationItem.title = "Hoşgeldiniz"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.blue
        appearance.titleTextAttributes = [.foregroundColor:UIColor.white,.font:UIFont(name: "Lobster-Regular", size: 25)!]
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        let bottomline1 = CALayer()
        let bottomline2 = CALayer()
        bottomline1.frame = CGRect(x: 0, y: usernameTf.frame.height - 1, width: usernameTf.frame.width, height: 1.0)
        bottomline1.backgroundColor =  UIColor.black.cgColor
        bottomline2.frame = CGRect(x: 0, y: usernameTf.frame.height - 1, width: usernameTf.frame.width, height: 1.0)
        bottomline2.backgroundColor =  UIColor.black.cgColor
        usernameTf.borderStyle = UITextField.BorderStyle.none
        passwordTf.borderStyle = UITextField.BorderStyle.none
        usernameTf.layer.addSublayer(bottomline1)
        passwordTf.layer.addSublayer(bottomline2)
        usernameTf.setupLeftSideImage(ImageViewNamed: "mailicon.jpg")
        passwordTf.setupLeftSideImage(ImageViewNamed: "passwordicon")
        // Do any additional setup after loading the view.
    }
    

}
extension UITextField{
    func setupLeftSideImage (ImageViewNamed : String) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView.image = UIImage(named: ImageViewNamed)
        let imageViewContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
        imageViewContainerView.addSubview(imageView)
        leftView = imageViewContainerView
        leftViewMode = .always
        self.tintColor = .lightGray
        
    }
}
