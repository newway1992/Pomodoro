//
//  Task.swift
//  Pomodoro
//
//  Created by 刘伟 on 16/7/29.
//  Copyright © 2016年 Newway. All rights reserved.
//

import Foundation
class Task: NSObject {
    var info : String!{
        set{
            self.info = newValue
        }
        get{
            return self.info
        }
    }
    var startData : NSData!
    var endData : NSData!
    
    init(info:String){
        super.init()
        self.info = info
    }
    internal func getInfo()->String{
        return info
    }
    
    override var description: String{
        return "task info"
    }
}
