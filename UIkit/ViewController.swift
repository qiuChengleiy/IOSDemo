//
//  ViewController.swift
//  UIkitDemo
//
//  Created by qiuchenglei on 2018/9/11.
//  Copyright © 2018年 com_ios_study. All rights reserved.
// 11--------,,,,-----

import UIKit

class ViewController: UIViewController {
    
    // 创建
   // let seg = UISegmentedControl(frame:CGRect(x:80, y:150, width:170, height:30)) // 高度无效
 //   var i:Int = 2;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 创建
      //  let seg = UISegmentedControl(frame:CGRect(x:50, y:350, width:170, height:30)) // 高度无效
        
        let seg = UISegmentedControl(items: ["blue","red"])   //另一种创建方法
        seg.frame = CGRect(x:50, y:350, width:170, height:30)
        
//        seg.insertSegment(withTitle: "第1个按钮", at: 0, animated: true)
//        seg.insertSegment(withTitle: "第2个按钮", at: 1, animated: true)
        
        
       // self.navigationItem.titleView = seg
        

        
       self.navigationItem.titleView = self.titleButton;
        
        self.view.addSubview(seg)
        
        // 设置分段控制器的按钮  默认蓝色
      
        
        // 点击事件
      //  seg.addTarget(self, action: #selector(click(_:)), for: UIControlEvents.valueChanged)
        
        
        // 设置是否保存选中状态   // 点击就消失选中状态  默认为false
      //  seg.isMomentary = true
        
        
        // 设置宽度自适应  不会自动分配 默认是false
      //  seg.apportionsSegmentWidthsByContent = true
        
        
        // 手动的设置宽度  如果另一个不去设置的话， 另一个会自动分配剩余的宽度
      //  seg.setWidth(30, forSegmentAt: 0)
        
        
        // 设置内容偏移量 --- 里边的文字区域
     //   seg.setContentOffset(CGSize(width: 100, height: 10), forSegmentAt: 1)
        
        // 默认选中的
     //   seg.selectedSegmentIndex = 1
        
        // 改变颜色
     //   seg.tintColor = UIColor.orange
        
    }
    
//    @objc func click(_ seg:UISegmentedControl) {
//        print(seg.selectedSegmentIndex,"按钮被点击")
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        // 动态插入  点击时候就插入   标题插入
//         self.i = self.i+1
//         seg.insertSegment(withTitle: "第\(self.i)个按钮", at: self.i, animated: true)
//    }
   
    
    //代理回调函数
//    @objc func click(_ mySwitch:UISwitch) {
//         print("click!")
//
//        if(mySwitch.isOn) {
//            print("ok")
//        }else {
//            print("no")
//        }
//
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}









