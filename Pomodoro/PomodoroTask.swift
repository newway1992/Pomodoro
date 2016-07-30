//
//  PomodoroTask.swift
//  Pomodoro
//
//  Created by 刘伟 on 16/7/29.
//  Copyright © 2016年 Newway. All rights reserved.
//

import Foundation
class PomodoroTask : NSObject{
    var task : Task?

    init(info : String){
        task?.info = info
    }
}
