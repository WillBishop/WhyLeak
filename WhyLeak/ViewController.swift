//
//  ViewController.swift
//  WhyLeak
//
//  Created by Will Bishop on 16/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    var presentButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentButton = UIButton(type: .system)
        presentButton.setTitle("Open 10MB image", for: .normal)
        presentButton.sizeToFit()
        presentButton.center = self.view.center
        self.view.addSubview(presentButton)
        presentButton.addTarget(self, action: #selector(loadImage), for: .touchUpInside)
    }

    @objc func loadImage() {
        let vc = SecondViewController()
        self.present(vc, animated: true, completion: {
            print("done")
        })
    }

}

