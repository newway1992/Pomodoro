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
    var play : UIButton = UIButton()
    var label : UILabel?
    public override init(frame: CGRect) {
        super.init(frame: frame)
        play.setTitle("~~~~~~", forState: UIControlState.Application)
        label = UILabel(frame: CGRectMake(30, 300, 20, 20))
        label?.font = UIFont(name:"微软雅黑", size:16)
        label?.text = "自定义View"
        label?.textColor = UIColor.orangeColor()
        self.addSubview(label!)
        self.addSubview(play)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews(){
        play.frame = CGRectMake(30, 300, 20, 20)
       // label.frame = CGRectMake(30, 300, 20, 20)
    }
}
