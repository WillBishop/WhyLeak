//
//  SecondViewController.swift
//  WhyLeak
//
//  Created by Will Bishop on 16/9/20.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        imageView.contentMode = .scaleAspectFill
        if let photo = UIImage(named: "photo") {
            imageView.image = photo
        }
    }
    
    deinit {
        imageView.image = nil
        print("Leaving now")
    }
    
}
