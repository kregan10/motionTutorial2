//
//  ViewController.swift
//  motionTutorial2
//
//  Created by Kerry Regan on 2018-03-02.
//  Copyright © 2018 Kerry Regan. All rights reserved.
//

import UIKit
import CoreMotion


class ViewController: UIViewController {

    var motionManager: CMMotionManager!
    var isRed: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
    }
    override var canBecomeFirstResponder: Bool { return true }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if(event?.subtype == UIEventSubtype.motionShake) {
            if isRed {
                view.backgroundColor = .blue
                isRed = false
            }
            else {
                view.backgroundColor = .red
                isRed = true
            }
            
        }
    }



}

