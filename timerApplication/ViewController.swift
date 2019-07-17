//
//  ViewController.swift
//  timerApplication
//
//  Created by Abdalla on 7/16/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var t = 300
    var tim = Timer()
    @objc func mytimer(){
        if(t > 0)
        {t = t - 1 }
        lbl_show.text = String(t)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var seg: UISegmentedControl!
    @IBAction func btn_segment(_ sender: Any) {
        if seg.selectedSegmentIndex == 0
        {
            view.backgroundColor = UIColor.blue
        }
        if seg.selectedSegmentIndex == 1
        {
            view.backgroundColor = UIColor.green
        }
        if seg.selectedSegmentIndex == 2
        {
            view.backgroundColor = UIColor.red
        }
        if seg.selectedSegmentIndex == 3
        {
            view.backgroundColor = UIColor.orange
        }
    }
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func btn_slider(_ sender: Any) {
        lbl_show.font = UIFont.systemFont(ofSize: CGFloat(slider.value))
    }
    
    @IBOutlet weak var lbl_message: UILabel!
    @IBOutlet weak var sw: UISwitch!
    @IBAction func btn_switch(_ sender: Any) {
        if (sw.isOn){
            lbl_message.text = "Switch Is On"
        }else{
            lbl_message.text = "Switch Is Off"
        }
    }
    
    @IBOutlet weak var lbl_show: UILabel!
    
    @IBAction func btn_play(_ sender: Any) {
        tim = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.mytimer), userInfo: nil, repeats: true)
    }
    @IBAction func btn_pause(_ sender: Any) {
        tim.invalidate()
    }
    @IBAction func btn_minus(_ sender: Any) {
        if t > 0
        {
            t = t - 10
        }
        else
        {
            t = 0
        }
    }
    @IBAction func btn_add(_ sender: Any) {
        if t < 290
        {
            t  = t + 10
        }
        else
        {
            t = 300
        }
    }
    @IBAction func btn_reset(_ sender: Any) {
        t = 300
    }
    
}

