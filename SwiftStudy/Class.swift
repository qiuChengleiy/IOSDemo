//
//  Class.swift
//  HelloWorld
//
//  Created by qiuchenglei on 2018/9/11.
//  Copyright © 2018年 com_ios_study. All rights reserved.
//

//  swift 进阶 ---   类

import Foundation
import Cocoa

// 定义类
class MarksStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

class studentMarks {
    var mark = 300
}
let marks = studentMarks()
//print("成绩为 \(marks.mark)")


//  引用
class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {  // 可以直接访问类的属性
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

//if spClass1 === spClass2 {// false
//    print("引用相同的类实例 \(spClass1)")
//}
//
//if spClass1 !== spClass2 {// true
//    print("引用不相同的类实例 \(spClass2)")
//}


//  延迟属性   lazy
class sample {
    lazy var no = number() // `var` 关键字是必须的
}

class number {
    var name = "Runoob Swift 教程"
}

var firstsample = sample()


//  计算属性
class samples {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get{
            return (length / 2, breadth / 2)   //  访问的时候默认返回
        }
        set(axis){
            no1 = axis.0 - (length / 2)     // 如果设置了值 则返回这个  .o代表第一个参数  .1代表第二个参数
            no2 = axis.1 - (breadth / 2)
        }
    }
}

var result = sample()
//print(result.middle)
//result.middle = (0.0, 10.0)
//
//print(result.no1)
//print(result.no2)
//



//  只读计算属性
class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}

var movie = film()
//movie.head = "Swift 属性"
//movie.duration = 3.09

//print(movie.metaInfo["head"]!)
//print(movie.metaInfo["duration"]!)
//
//


// 属性观察器
class Samplepgm {
    var counter: Int = 0{
        willSet(newTotal){
            print("计数器: \(newTotal)")     //  两个方法都会被调用 如果属性发生改变
        }
        didSet{
            if counter > oldValue {
                print("新增数 \(counter - oldValue)")
            }
        }
    }
}
let NewCounter = Samplepgm()
//NewCounter.counter = 100
//NewCounter.counter = 800
//



// 类型属性
//struct Structname {
//    static var storedTypeProperty = " "
//    static var computedTypeProperty: Int {
//        // 这里返回一个 Int 值
//    }
//}
//
//enum Enumname {
//    static var storedTypeProperty = " "
//    static var computedTypeProperty: Int {
//        // 这里返回一个 Int 值
//    }
//}
//
//class Classname {
//    class var computedTypeProperty: Int {
//        // 这里返回一个 Int 值
//    }
//}


// 获取类型属性的值
struct StudMarkss {
    static let markCount = 97
    static var totalCount = 0
    var InternalMarks: Int = 0 {
        didSet {
            if InternalMarks > StudMarkss.markCount {
                InternalMarks = StudMarkss.markCount
            }
            if InternalMarks > StudMarkss.totalCount {
                StudMarkss.totalCount = InternalMarks
            }
        }
    }
}

var stud1Mark1 = StudMarkss()
var stud1Mark2 = StudMarkss()

//stud1Mark1.InternalMarks = 98
//print(stud1Mark1.InternalMarks)
//
//stud1Mark2.InternalMarks = 87
//print(stud1Mark2.InternalMarks)
//


// 方法
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
// 初始计数值是0
let counter = Counter()

// 计数值现在是1
//counter.increment()
//
//// 计数值现在是6
//counter.incrementBy(amount: 5)
//print(counter.count)
//
//// 计数值现在是0
//counter.reset()
//print(counter.count)
//


// self 等于实例本身

class calculations {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
        print("Self 内: \(res)")
    }
    
    func tot(c: Int) -> Int {
        return res - c
    }
    
    func result() {
        print("结果为: \(tot(c: 20))")
        print("结果为: \(tot(c: 50))")
    }
}

let pri = calculations(a: 600, b: 300)
let sum = calculations(a: 1200, b: 300)

//pri.result()
//sum.result()


//mutating    变异(mutating)这个方法，然后方法就可以从方法内部改变它的属性；并且它做的任何改变在方法结束时还会保留在原始结构中。
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        
        print(length)
        print(breadth)
    }
}

var val = area(length: 3, breadth: 5)
//val.scaleBy(res: 3)
//val.scaleBy(res: 30)
//val.scaleBy(res: 300)


// 给self 复制
//struct area {
//    var length = 1
//    var breadth = 1
//
//    func area() -> Int {
//        return length * breadth
//    }
//
//    mutating func scaleBy(res: Int) {
//        self.length *= res
//        self.breadth *= res
//        print(length)
//        print(breadth)
//    }
//}
//var val = area(length: 3, breadth: 5)
//val.scaleBy(res: 13)
//



// 类型方法
class Math
{
    class func abs(number: Int) -> Int
    {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}

struct absno
{
    static func abs(number: Int) -> Int
    {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}

let no = Math.abs(number: -35)
let num = absno.abs(number: -5)
//
//print(no)
//print(num)
//
//


// 下标脚本

//struct subexample {
//    let decrementer: Int
//    subscript(index: Int) -> Int {
//        return decrementer / index
//    }
//}
//let division = subexample(decrementer: 100)
//
//print("100 除以 9 等于 \(division[9])")
//print("100 除以 2 等于 \(division[2])")
//print("100 除以 3 等于 \(division[3])")
//print("100 除以 5 等于 \(division[5])")
//print("100 除以 7 等于 \(division[7])")


// 赋值
class daysofaweek {
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
                        "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]   // 声明下标脚本的值
        }
        set(newValue) {
            self.days[index] = newValue   // 执行赋值操作
        }
    }
}
var p = daysofaweek()

//print(p[0])
//print(p[1])
//print(p[2])
//print(p[3])




//  继承 ======================
class StudDetails
{
    var mark1: Int;
    var mark2: Int;
    
    init(stm1:Int, results stm2:Int)
    {
        mark1 = stm1;
        mark2 = stm2;
    }
    
    func show()
    {
        print("Mark1:\(self.mark1), Mark2:\(self.mark2)")
    }
}

class Tom : StudDetails
{
    init()
    {
        super.init(stm1: 93, results: 89)      // super 访问父类
    }
}

//let tom = Tom()
//tom.show()
//


//  重写

class SuperClass {
    func show() {
        print("这是超类 SuperClass")
    }
}

class SubClass: SuperClass  {
    override func show() {         ///  override    可以重写属性  观察器     添加final 可以防止被重写
        print("这是子类 SubClass")
    }
}
//
//let superClass = SuperClass()
//superClass.show()
//
//let subClass = SubClass()
//subClass.show()




















