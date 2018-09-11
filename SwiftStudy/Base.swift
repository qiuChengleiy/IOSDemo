//
//  Base.swift
//  HelloWorld
//
//  Created by qiuchenglei on 2018/9/10.
//  Copyright © 2018年 com_ios_study. All rights reserved.
//

import Foundation

func Base() ->Any {
// swift 学习  ======   基础部分
print("Hello, World!")

// 变量 常量 声明
let a = "hello"
let b = "world:"

var c = "swift"

// 指定强类型：
var age:Int = 20

// 转义
print(a+b+c+"😈 wo:\(age)")

// 变量类型
// Int:32 指 2的32次方范围

// 问号代表可选类型
var d :Int? = 20

// 浮点型
var e :Double = 3.14
var f :Float = 4.12
// 相加的时候要进行类型转换
var result = e + Double(f)

// 布尔
var bool :Bool = true

// 字符串 是值类型 不是引用类型
var s :String = "111"
var ss :Character = "h" // tip

// 元组
var ar = ("nihao",1,2,34)  // 一般可以用于函数返回值
print(ar.3)  // 以点的形式获取

// 数组
var arr = [String]()  // 创建值为字符串的数组
arr.append(a)
print(arr[0])

//指定大小的数组
var arr1 = [Int](repeating: 0, count: 3)   // 初始值为1 长度为3
print(arr1.count)  // 3
arr1.append(1) // 添加在最后边
print(arr1.count)  // 4

// 指定位置插入
arr1.insert(2018, at: 2) // 位置: 3

print(arr1[2])

// 遍历数组
for value in arr1 {
    print(value)
}

// 字典: 多维数组   （定义好了 就没法改变 key唯一 ）
// 创建一个空字典
var someDict = [Int: String]()  // 指定类型
var someDicts: [Int:String] = [1:"One", 2:"Two", 3:"Three"]   // 实例
print(someDicts[1])

//更新值
someDicts.updateValue("nihao", forKey: 1)
print(someDicts[1])

// 移除
someDicts.removeValue(forKey: 1)
print(someDicts[1])   // nil  空值

for value in someDicts.values {
    print(value)
}


// 控制流程

//1. 循环

//for in

// for ++ swift3 已经移除

// while
var j: Int = 0;
while(5 > j) {
    let v: Int = j
    print(v)
    j=j+1
}

//repeat while


repeat{
    let v: Int = j
    print(v+1)   // 只有一次输出是6 因为上边j = 5了 按道理不会执行的但是 这个循环至少执行一次
    j=j+1
} while(5>j);


// 条件
if(3>2) {
    print("yes")
}else {
    print("no")
}
 return 1

}

// switch

// continue 继续   break 跳出停止
