//
//  ViewController.swift
//  Alien imageViewer Timer03
//
//  Created by D7702_10 on 2019. 3. 28..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var CountLabel: UILabel!
    
    var count = 1
    // Timer 객체 생성
    var myTimer = Timer()
    var isAnimating = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImageView.image = UIImage(named: "Image\(count)")
        CountLabel.text = String(count)
    }


    @IBAction func Playbtn(_ sender: Any) {
        
        //Timer 작동
        if isAnimating == true { return }
        else { isAnimating = true }
        myTimer = Timer.scheduledTimer(timeInterval:0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        
        
    }
    
    @IBAction func Pausebtn(_ sender: Any) {
        myTimer.invalidate()
        
        isAnimating = false
    }
    
    @IBAction func Stopbtn(_ sender: Any) {
        myTimer.invalidate()
        count = 1
    }
    @objc func doAnimation(){
        if count == 5 {
        count = 0
        }
        
        count += 1
        
        ImageView.image = UIImage(named: "Image\(count)")
        CountLabel.text = String(count)
        
    }
}

