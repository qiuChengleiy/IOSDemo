//
//  Obj.swift
//  HelloWorld
//
//  Created by qiuchenglei on 2018/9/10.
//  Copyright © 2018年 com_ios_study. All rights reserved.

// Swift 高级    面向过程---
import Foundation

// 函数的定义
func Methods(username:String, age:Int)->String {
    return ("hello fun \(username) \(age)")
}

// 无返回值
func SayName() {
    
}

// 多返回值
func SayName() ->(name:String, age:Int){
    return (name:"hello",age:40)
}

// 获取返回值  SayName().age  实际上那是一个元组类型

// 保留参数别名
func SayNames(user name:String, age:Int) ->(name:String, age:Int){
    return (name:"hello",age:40)
}

//SayNames(name:"111",30)  调用的时候需要带上name

// 实参
func test(_ name: inout String) {
    name += "nihao"   // 就可以对name 做改变
}

// 复制函数  === 函数付给变量
var func1 = test   //一样可以


// 函数可以作为参数进行传递  也可做返回值

func func2() ->Int{
    return 1
}
func func3() ->Int{
    return 3
}

func func4(num: Int) ->Int{
    return (num)
}

var fun_ = func4

func func5() ->Int{
   return fun_(func2())
}


// 闭包
//语法 :
let bibao = {print("hello")}
// 调用 bibao()

//带有返回值的
let bibao1 = {
    (name:String) -> String in
    return "hello world"
}

// 调用 bibao("nihao")

//// sorted  排序
//
//let names = ["AT", "AE", "D", "S", "BE"]
//
//var reversed = names.sorted( by: { $0 > $1 } )



// 枚举
import Cocoa

func meiju() {
// 定义枚举
enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}

var weekDay = DaysofaWeek.THURSDAY
weekDay = .THURSDAY
switch weekDay
{
case .Sunday:
    print("星期天")
case .Monday:
    print("星期一")
case .TUESDAY:
    print("星期二")
case .WEDNESDAY:
    print("星期三")
case .THURSDAY:
    print("星期四")
case .FRIDAY:
    print("星期五")
case .Saturday:
    print("星期六")
}
    
  // 相关值
    enum Student{
        case Name(String)
        case Mark(Int,Int,Int)
    }
    var studDetails = Student.Name("Runoob")
    var studMarks = Student.Mark(98,97,95)
    switch studMarks {
    case .Name(let studName):
        print("学生的名字是: \(studName)。")
    case .Mark(let Mark1, let Mark2, let Mark3):
        print("学生的成绩是: \(Mark1),\(Mark2),\(Mark3)。")
    }
    
    

// 原始值
    enum Month: Int {
        //  后边自动增加1
        case January = 1, February, March, April, May, June, July, August, September, October, November, December
    }
    
    let yearMonth = Month.May.rawValue
    print("数字月份为: \(yearMonth)。")

}


//  结构体
func jiegou() {
    // 定义一个结构体
    struct MarkStruct{
        var mark1: Int
        var mark2: Int
        var mark3: Int
    }
    
  // 访问
    struct studentMarks {
        var mark1 = 100
        var mark2 = 78
        var mark3 = 98
    }
    let marks = studentMarks()
    print("Mark1 是 \(marks.mark1)")
    print("Mark2 是 \(marks.mark2)")
    print("Mark3 是 \(marks.mark3)")
    
    // 初始化传值
    struct MarksStruct {
        var mark: Int
        
        init(mark: Int) {
            self.mark = mark
        }
    }
    var aStruct = MarksStruct(mark: 98)
    var bStruct = aStruct // aStruct 和 bStruct 是使用相同值的结构体！
    bStruct.mark = 97
    print(aStruct.mark) // 98
    print(bStruct.mark) // 97
    
    
}








