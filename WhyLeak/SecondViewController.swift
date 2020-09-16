//
//  SecondViewController.swift
//  WhyLeak
//
//  Created by Will Bishop on 16/9/20.
//

import Foundation
import UIKit
import RealityKit
import ARKit

class SecondViewController: UIViewController {
    
    let imageView = ARView()
    
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
        imageView.automaticallyConfigureSession = true
        
        
    }
    
    deinit {
//        imageView.image = nil
        print("Leaving now")
    }
    
}
