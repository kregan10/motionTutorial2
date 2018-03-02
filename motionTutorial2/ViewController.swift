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
        // true if this object is now the first-responder or false if it is not.
        self.becomeFirstResponder()
    }
    /*
     This method returns false by default. Subclasses must override this method and return true to be able to become first responder.
     Do not call this method on a view that is not currently in the active view hierarchy. The result is undefined.
     */
    override var canBecomeFirstResponder: Bool { return true }

    // Tells the receiver that a motion event has ended.
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
            print("Shake!!!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

