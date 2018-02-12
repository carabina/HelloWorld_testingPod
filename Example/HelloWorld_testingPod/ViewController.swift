//
//  ViewController.swift
//  HelloWorld_testingPod
//
//  Created by edward1879 on 02/07/2018.
//  Copyright (c) 2018 edward1879. All rights reserved.
//

import UIKit
import HelloWorld_testingPod

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let progressIndicator = ProgressIndicator(frame: view.frame)
    view.addSubview(progressIndicator)
  }
  
}

