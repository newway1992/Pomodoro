//
//  PomodoroTaskView.swift
//  Pomodoro
//
//  Created by 刘伟 on 16/7/29.
//  Copyright © 2016年 Newway. All rights reserved.
//

import Foundation
import UIKit
class PomorodoroTaskView : UIView{
    @IBOutlet weak var timeLabel : UILabel?
    @IBOutlet weak var taskInfoLabel : UILabel?
    
    @IBOutlet weak var btnPlay: UIButton?
    @IBOutlet weak var btnPause: UIButton?
    @IBOutlet weak var btnQuit: UIButton?
    
    func setTimel(timeSeconds : Int){
        let mins = timeSeconds / 60
        let seconds = timeSeconds % 60
        timeLabel!.text = NSString(format: "%02d:%02d", mins,seconds) as String
    }
    
    func setTaskInfo(info : String){
        taskInfoLabel!.text = info
    }
    
}
