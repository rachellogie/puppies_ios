//
//  ViewController.swift
//  Simple Puppies
//
//  Created by Rachel Logie on 8/18/14.
//  Copyright (c) 2014 Rachel Logie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var puppyLabel: UILabel!
    
    var imageName = "puppy1.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.puppyLabel.text = imageName
        self.imageView.image = UIImage(named: imageName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapToggleButton(sender: AnyObject) {
        if imageName == "puppy1.jpg" {
            imageName = "puppy2.jpg"
        } else {
            imageName = "puppy1.jpg"
        }
        self.imageView.image = UIImage(named: imageName)
    
    }

}

