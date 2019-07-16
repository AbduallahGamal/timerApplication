//
//  ViewController.swift
//  timerApplication
//
//  Created by Abdalla on 7/16/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var t = 30
    var tim = Timer()
    @objc func mytimer(){
        t = t - 1
        lbl_show.text = String(t)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var lbl_show: UILabel!
    
    @IBAction func btn_play(_ sender: Any) {
        tim = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.mytimer), userInfo: nil, repeats: true)
    }
    @IBAction func btn_pause(_ sender: Any) {
    }
    @IBAction func btn_minus(_ sender: Any) {
    }
    @IBAction func btn_add(_ sender: Any) {
    }
    @IBAction func btn_reset(_ sender: Any) {
    }
    
}

