//
//  ViewController.swift
//  Pomodoro
//
//  Created by 刘伟 on 16/7/29.
//  Copyright © 2016年 Newway. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {
    let tomatoImageName = "tomato_done.png"
    var index : Int = 0
    //var data:[(string,[int])] = [(tomatoImageName,[])]
    @IBOutlet var pomodoroTaskView: PomorodoroTaskView!
    var timer:NSTimer?
    var remainSeconds: Int = 0{
        willSet(newValue){
            pomodoroTaskView!.setTimel(newValue)
            
        }
    }
    var isCounting: Bool! = false{
        willSet(newValue){
            if (newValue == true){
                if(timer == nil){
                     timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer", userInfo: nil, repeats: true)
                }
            }
            else{
                timer!.invalidate()
                timer = nil
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pomodoroTaskView!.setTaskInfo("制作番茄工作法app～")
        pomodoroTaskView!.btnPlay!.addTarget(self, action: "play:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let alertTitle = "番茄+1，休息一下"
    func updateTimer(){
        remainSeconds -= 1
        if(remainSeconds <= 0){
            addTomatoImage()
            let alert = UIAlertView()
            self.isCounting = false
            alert.title = alertTitle
            alert.message = ""
            alert.addButtonWithTitle("OK")
            alert.show()
        }
    }
    
    @IBAction func play(sender: AnyObject!) {
        remainSeconds = 10
        isCounting = true
    }
    
    let tomatoWidth : CGFloat = 64;
    let tomatoHeight : CGFloat = 64;
    func addTomatoImage(){
        let image = UIImageView(frame: CGRectMake(CGFloat(Float(index)) * tomatoWidth, 300, tomatoWidth, tomatoHeight))
        image.image = UIImage(named: tomatoImageName)
        view.addSubview(image)
        index++
    }
}

