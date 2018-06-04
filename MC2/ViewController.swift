//
//  ViewController.swift
//  MC2
//
//  Created by Jansen Malvin on 22/05/18.
//  Copyright © 2018 Jansen Malvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var ink: UILabel!
    @IBOutlet weak var start: UILabel!
    @IBOutlet weak var animator: UIButton!
    @IBOutlet weak var chapter: UILabel!
    @IBOutlet weak var chap1: UIButton!
    @IBOutlet weak var chap2: UIButton!
    @IBOutlet weak var chap3: UIButton!
    
    var timer = Timer()
    @IBAction func animator(_ sender: UIButton) {
        self.ink.isHidden = true
        self.start.isHidden = true
        self.animator.isHidden = true
        self.chapter.isHidden = false
        self.chap1.isHidden = false
        self.chap2.isHidden = false
        self.chap3.isHidden = false
        
        self.chapter.center = CGPoint (x: 187.0, y: 250.0)
        self.chap1.center = CGPoint (x: 187.0, y: 300.0)
        self.chap2.center = CGPoint (x: 187.0, y: 350.0)
        self.chap3.center = CGPoint (x: 187.0, y: 400.0)
        timer = Timer.scheduledTimer(timeInterval: 1.03, target: self, selector: #selector(heartanimated), userInfo: nil, repeats: true)
    }
    
    @objc func heartanimated()
    {
        var count1 : Int = 0
        var countx : CGFloat  = 200

        if count1 <= 100000
        {
            count1 = count1 + 10
            countx = countx + 10
            heart.frame = CGRect (x: 100.0, y: 500.0, width: countx, height: countx)
        }
        else if count1 > 100000
        {
            count1 = 0
            countx = 200
            heart.frame = CGRect (x: 0.0, y: 500.0, width: countx, height: countx)
        }
        

    }
    @IBAction func chap1(_ sender: UIButton) {
        performSegue(withIdentifier: "menuToStory", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ink.isHidden = false
        self.start.isHidden = true
        self.animator.isHidden = true
        self.chapter.isHidden = true
        self.chap1.isHidden = true
        self.chap2.isHidden = true
        self.chap3.isHidden = true
        self.heart.isHidden = true
        
        self.ink.center = CGPoint (x: 187.0, y: 250.0)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.ink.isHidden = true
        self.start.isHidden = false
        self.animator.isHidden = false
        self.chapter.isHidden = true
        self.chap1.isHidden = true
        self.chap2.isHidden = true
        self.chap3.isHidden = true
        self.heart.isHidden = false
        
        self.start.center = CGPoint (x: 187.0, y: 250.0)
        self.animator.center = CGPoint (x: 187.0, y: 300.0)
        self.heart.center = CGPoint (x: 187.0, y: 500.0)
        timer.invalidate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

class StoryView: UIViewController{
    @IBOutlet weak var pause: UIButton!
    
    @IBOutlet weak var story1: UILabel!
    @IBOutlet weak var story2: UILabel!
    @IBOutlet weak var button2a: UIButton!
    @IBOutlet weak var button2b: UIButton!
    @IBOutlet weak var story3: UILabel!
    @IBOutlet weak var button3a: UIButton!
    
    @IBAction func button2a(_ sender: UIButton) {
        self.pause.isHidden = false
        self.story1.isHidden = true
        self.story2.isHidden = true
        self.button2a.isHidden = true
        self.button2b.isHidden = true
        self.story3.isHidden = false
        self.button3a.isHidden = false
        
        self.pause.center = CGPoint (x: 30.0, y: 50.0)
        self.story3.center = CGPoint (x: 187.0, y: 250.0)
        self.button3a.center = CGPoint (x: 50.0, y: 100.0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pause.isHidden = false
        self.story1.isHidden = false
        self.story2.isHidden = true
        self.button2a.isHidden = true
        self.button2b.isHidden = true
        self.story3.isHidden = true
        self.button3a.isHidden = true
        
        self.pause.center = CGPoint (x: 30.0, y: 50.0)
        self.story1.center = CGPoint (x: 187.0, y: 250.0)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.pause.isHidden = false
        self.story1.isHidden = true
        self.story2.isHidden = false
        self.button2a.isHidden = false
        self.button2b.isHidden = false
        self.story3.isHidden = true
        self.button3a.isHidden = true
        
        self.pause.center = CGPoint (x: 30.0, y: 50.0)
        self.story2.center = CGPoint (x: 187.0, y: 250.0)
        self.button2a.center = CGPoint (x: 30.0, y: 500.0)
        self.button2b.center = CGPoint (x: 347.0, y: 500.0)
    }
    override func didReceiveMemoryWarning() {
    }
}


