//
//  ViewController.swift
//  BeanStuff
//
//  Created by Zeke Shearer on 9/13/14.
//  Copyright (c) 2014 Zeke Shearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PTDBeanManagerDelegate {
    
    let beanManager = PTDBeanManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        beanManager.delegate = self;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func beanManagerDidUpdateState(beanManager: PTDBeanManager!) {
        if beanManager.state == BeanManagerState.PoweredOn {
            beanManager.startScanningForBeans_error(nil)
        }
    }
    
    func BeanManager(beanManager: PTDBeanManager!, didDiscoverBean bean: PTDBean!, error: NSError!) {
        let identifier = bean.identifier
        NSLog("%@", identifier)
    }
    
    func BeanManager(beanManager: PTDBeanManager!, didConnectToBean bean: PTDBean!, error: NSError!) {
        
    }
    
    func BeanManager(beanManager: PTDBeanManager!, didDisconnectBean bean: PTDBean!, error: NSError!) {
        
    }

}

