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
    
    let arView = ARView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(arView)
        arView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            arView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            arView.topAnchor.constraint(equalTo: self.view.topAnchor),
            arView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        arView.automaticallyConfigureSession = true
        
    }
}
