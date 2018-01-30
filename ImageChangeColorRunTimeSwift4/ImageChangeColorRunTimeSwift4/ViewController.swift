//
//  ViewController.swift
//  ImageChangeColorRunTimeSwift4
//
//  Created by Pawan kumar on 1/30/18.
//  Copyright © 2018 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appleImageView: UIImageView!
    @IBOutlet weak var updateColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func updateColorButton(_ sender: Any) {
   
        spawnBadge()
    }
    
    func spawnBadge() -> Void {
        
        let red : CGFloat = CGFloat((arc4random() % 99767) / 32767)
        let green : CGFloat = CGFloat((arc4random() % 99767) / 32767)
        let blue : CGFloat = CGFloat((arc4random() % 99767) / 32767)
        let x : CGFloat = UIScreen.main.bounds.size.width * CGFloat((arc4random() % 99767) / 32767)
        let y : CGFloat = UIScreen.main.bounds.size.height * CGFloat((arc4random() % 99767) / 32767)
        
        let randomColor : UIColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
        
        UIView.animate(withDuration: 0.3) {
            
            self.appleImageView.center = CGPoint(x: x, y: y)
            self.appleImageView.image = self.appleImageView.image?.withRenderingMode(.alwaysTemplate)
            self.appleImageView.tintColor = randomColor
        }
    }
    
}

