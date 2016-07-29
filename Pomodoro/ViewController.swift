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
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer:NSTimer?
    var remainSeconds: Int = 0{
        willSet(newValue){
            let mins = newValue / 60
            let seconds = newValue % 60
            timeLabel.text = NSString(format: "%02d:%02d", mins,seconds) as String
        }
    }
    var isCounting: Bool! = false{
        willSet(newValue){
            if (newValue == true){
                timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer", userInfo: nil, repeats: true)
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
        remainSeconds = 10
        isCounting = true
        timeLabel.frame = CGRectMake(10, 40, self.view.bounds.width - 20, 120)
        let taskView:PomorodoroTaskView = PomorodoroTaskView(frame: CGRectMake(10, 800, self.view.bounds.width - 20, 50))
        self.view.addSubview(taskView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let alertTitle = "番茄+1，休息一下"
    func updateTimer(){
        remainSeconds -= 1
        if(remainSeconds <= 0){
            let alert = UIAlertView()
            self.isCounting = false
            alert.title = alertTitle
            alert.message = ""
            alert.addButtonWithTitle("OK")
            alert.show()
        }
    }
    
    

}

