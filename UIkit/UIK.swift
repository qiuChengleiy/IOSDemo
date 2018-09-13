//
//  UIK.swift
//  UIkitDemo
//
//  Created by qiuchenglei on 2018/9/11.
//  Copyright © 2018年 com_ios_study. All rights reserved.
//

import Foundation
import UIKit


// UIlabel
func UIlabels() {
    // 创建一个UIlabel
    let label = UILabel(frame:CGRect(x:10, y:20, width:300, height:100))
    label.text = "hello world"
    label.font = UIFont.boldSystemFont(ofSize: 25)  // 字体大小
  //  label.textColor = UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)    rgba
    label.textColor = UIColor.red
    label.backgroundColor = UIColor.blue  // 背景色
    label.textAlignment = NSTextAlignment.center   // 字体居中
    
    label.shadowColor = UIColor.orange   // 阴影
    label.shadowOffset = CGSize(width: 10, height: 10)  // 偏移
    
    // 展示的行数
    label.numberOfLines = 0 //  无限行   超出边界就换行
}


// Button
func Buttons() {
    // 创建
  //1.  let button = UIButton(frame:CGRect(x:10, y:20, width:300, height:100))
   // let button = UIButton(type: UIButtonType.system)  // BUTTON 类型  系统默认
    
    let button = UIButton(type: UIButtonType.infoDark)  // infoDark   如果想显示 则需要把背景颜色去掉
//    UIButtonType.system：前面不带图标，默认文字颜色为蓝色，有触摸时的高亮效果
//    UIButtonType.custom：定制按钮，前面不带图标，默认文字颜色为白色，无触摸时的高亮效果
//    UIButtonType.contactAdd：前面带“+”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
//    UIButtonType.detailDisclosure：前面带“!”图标按钮，默认文字颜色为蓝色，有触摸时的高亮效果
//    UIButtonType.infoDark：为感叹号“!”圆形按钮
//    UIButtonType.infoLight：为感叹号“!”圆形按钮
//    （注意：自ios7起，infoDark、infoLight、detailDisclosure效果都是一样的）
    
    button.frame = CGRect(x:10, y:20, width:50, height:20)  // 位置大小
    button.backgroundColor = UIColor.blue
    
    // 文字以及状态
    button.setTitle("普通状态", for:.normal) //普通状态下的文字
    button.setTitle("触摸状态", for:.highlighted) //触摸状态下的文字
    button.setTitle("禁用状态", for:.disabled) //禁用状态下的文字
    
    // 字体颜色
    button.setTitleColor(UIColor.black, for: .normal) //普通状态下文字的颜色
    button.setTitleColor(UIColor.green, for: .highlighted) //触摸状态下文字的颜色
    button.setTitleColor(UIColor.gray, for: .disabled) //禁用状态下文字的颜色
    
    // 阴影颜色
    button.setTitleShadowColor(UIColor.green, for:.normal) //普通状态下文字阴影的颜色
    button.setTitleShadowColor(UIColor.yellow, for:.highlighted) //普通状态下文字阴影的颜色
    button.setTitleShadowColor(UIColor.gray, for:.disabled) //普通状态下文字阴影的颜色
    
    // 内容区的偏移量 可以为负数  上右下左
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
    
    // 视觉效果  z周围有光效
    button.showsTouchWhenHighlighted = false
    
    
    // 按钮的背景图片  文字在上方
       button.setBackgroundImage(UIImage(named:"bg.jpg"), for: .normal)  // 这里还需要把BUtoon的类型改为system
      // 覆盖在文字上方
      button.setImage(UIImage(named:"bg.jpg"), for: .normal)
       button.setImage(UIImage(named:"icon"),for:.normal)  //设置图标   这里按钮类型要设置成 custom 否则显示蓝色
    
    // 事件
    //button.addTarget(self, action: #selector(click(_:)), for: UIControlEvents.touchUpInside) // 触摸点击
    // 方法定义要加 @objc
    
//    @objc func click(_ button:UIButton) {
//        print("click!")
//     print("click!")
    //   button.backgroundColor = UIColor.gray
    // 随机数  控制button
//     button.backgroundColor = UIColor(red: (CGFloat)(arc4random()%255)/255, green: (CGFloat)(arc4random()%255)/255, blue: (CGFloat)(arc4random()%255)/255, alpha: (CGFloat)(arc4random()%255)/255)
    
//    }
    
//    常用的触摸事件类型：
//    touchDown：单点触摸按下事件，点触屏幕
//    touchDownRepeat：多点触摸按下事件，点触计数大于1，按下第2、3或第4根手指的时候
//    touchDragInside：触摸在控件内拖动时
//    touchDragOutside：触摸在控件外拖动时
//    touchDragEnter：触摸从控件之外拖动到内部时
//    touchDragExit：触摸从控件内部拖动到外部时
//    touchUpInside：在控件之内触摸并抬起事件
//    touchUpOutside：在控件之外触摸抬起事件
//    touchCancel：触摸取消事件，即一次触摸因为放上太多手指而被取消，或者电话打断
    
    //按钮文字太长时的处理方法
//    let button = UIButton(frame:CGRect(x:20, y:50, width:130, height:50))
//    button.setTitle("这个是一段 very 长的文字", for:.normal) //普通状态下的文字
//    button.setTitleColor(UIColor.white, for: .normal) //普通状态下文字的颜色
//    button.backgroundColor = UIColor.orange
//    self.view.addSubview(button)
    
    //省略尾部文字
  //  button.titleLabel?.lineBreakMode = .byTruncatingTail
    
//    .byWordWrapping：自动换行（按词拆分）
//    .byCharWrapping：自动换行（按字符拆分）
    //  当设置自动换行后（byWordWrapping 或 byCharWrapping），我们可以在设置 title 时通过 \n 进行手动换行。
    button.setTitle("欢迎访问\nhangge.com", for:.normal)
}


// UIImageView
func UIimageView() {
    // 创建
    let imageView = UIImageView(frame:CGRect(x:10, y:20, width:300, height:100))
    
    // 设置图片
    imageView.image = UIImage(named: "1.jpg")
    
    // 设置背景色
    imageView.backgroundColor = UIColor.blue
    
    // 设置imageView的高亮图片
    imageView.highlightedImage = UIImage(named: "2.jpg")
    imageView.isHighlighted = true  // 如果为false 的话 则只会显示 1.jpg
    
    // 保持比例  默认是沾满
    imageView.contentMode = .scaleAspectFit
    
    
    // layer
    // 设置圆角
    // imageView.layer.masksToBounds = true
    //  imageView.layer.cornerRadius = 10
    
    // 设置边框
    // imageView.layer.borderWidth = 2
    // imageView.layer.borderColor = UIColor.red.cgColor
    
    //设置阴影0   与边框圆角有冲突
    imageView.layer.shadowColor = UIColor.yellow.cgColor
    imageView.layer.shadowOffset = CGSize(width: 10, height: 10)
    imageView.layer.shadowOpacity = 0.6;
    
    
    
    
    
    // 从网络获取
    // 封装好调用
//    let imageView = UIImageView(frame: CGRect(x: 90, y: 200, width: 200, height: 200))
//    imageView.layer.borderWidth = 5
//    imageView.layer.borderColor = UIColor.red.cgColor
//    imageView.dowloadFromServer(link:
//        "https://www.baidu.com/img/bd_logo1.png?where=super",
//                                contentMode: .scaleAspectFill)
   
    
    
    
    // 动画效果
//    var imageView:UIImageView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        imageView = UIImageView()
//        imageView.frame=CGRect(x:20, y:50, width:300, height:150)
//        //设置动画图片
//        imageView.animationImages = [UIImage(named:"1.jpg")!,UIImage(named:"2.jpg")!]
//        //设置每隔3秒变化一次
//        imageView.animationDuration=3
//        self.view.addSubview(imageView)
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        imageView.startAnimating()
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        imageView.stopAnimating()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
    
   
    
    //  异步网络请求图片拓展
//    extension UIImageView {
//        func dowloadFromServer(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
//            contentMode = mode
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                guard
//                    let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
//                    let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
//                    let data = data, error == nil,
//                    let image = UIImage(data: data)
//                    else { return }
//                DispatchQueue.main.async() {
//                    self.image = image
//                }
//                }.resume()
//        }
//        func dowloadFromServer(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
//            guard let url = URL(string: link) else { return }
//            dowloadFromServer(url: url, contentMode: mode)
//        }
//    }
    

    
}



// UISearchBar
// 代理协议
//class ViewController: UIViewController,UISearchBarDelegate {
//    let searchBar = UISearchBar(frame:CGRect(x:50, y:50, width:300, height:60))
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // 创建
//        //  let searchBar = UISearchBar(frame:CGRect(x:50, y:50, width:300, height:60))
//
//        // 提示文字
//        searchBar.placeholder = "hello ios"
//
//        // 默认文字
//        //  searchBar.text = "学习IOS开发"
//
//        // 设置风格
//        //  searchBar.barStyle = UIBarStyle.black   // 搜索框变黑色   默认是灰色
//
//        // 设置背景文字
//        searchBar.prompt = "提示"
//
//
//        // 设置相应的功能按钮是否显示
//        searchBar.showsBookmarkButton = true    // 书的按钮
//        // searchBar.showsSearchResultsButton = true   // 下拉按钮 结果按钮
//
//        // 设置渲染色
//        searchBar.tintColor = UIColor.red
//
//        // 设置搜索栏颜色
//        // searchBar.barTintColor = UIColor.blue   // 背景色
//
//        // 设置搜索框的背景视图
//        searchBar.scopeButtonTitles = ["1","2","3","4"]
//        // 设置展示附件视图
//        searchBar.showsScopeBar = true
//
//
//        // 设置代理
//        searchBar.delegate = self
//
//
//        self.view.addSubview(searchBar)
//    }
//
//    // 第一响应 点击空白 收起键盘
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        searchBar.resignFirstResponder()
//    }
//
//    //代理回调函数
//
//    // 监听附件 视图回调
//    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
//        print(selectedScope)
//    }
//
//    // 监听输入框文字变化时回调
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print(searchText)
//    }
//
//    // 监听点了图书
//    func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar) {
//        print("点了图书")
//    }
//
//    // 监听结果按钮
//    func searchBarResultsListButtonClicked(_ searchBar: UISearchBar) {
//        print("点击结果按钮")
//    }
//
//    //是否进入编辑状态
//    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
//        return true
//    }
//
//    // 进入编辑时
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("进入编辑")
//    }
//
//    // 将要结束编辑时触发的方法
//    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
//        return true
//    }
//
//    // 监听 输入的字符而不是 整个搜索框的内容
//    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//
//        print(text)
//        return true  // false 为不可编辑
//    }
//
//    // 点击取消按钮是触发的方法
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        print("取消编辑")
//    }
//
//    // 点击键盘上的搜索按钮
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        print("点击了搜索按钮")
//    }
//
//
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//}
//





//  UISwitch

//// 创建
//let mySwitch = UISwitch(frame:CGRect(x:50, y:50, width:300, height:60)) // 大小不会改变 只有位置变化
//
//// 设置滑块颜色  ---  圆圈颜色
//mySwitch.thumbTintColor = UIColor.blue
//
////滑块区域的颜色  --- 开启的颜色
//mySwitch.onTintColor = UIColor.red
//
//// 关闭颜色 ---- 边框色
//mySwitch.tintColor = UIColor.green
//
//
//// 处理事件
//mySwitch.addTarget(self, action: #selector(click(_:)), for: UIControlEvents.touchUpInside)
//
//self.view.addSubview(mySwitch)
//}
//
//
////代理回调函数
//@objc func click(_ mySwitch:UISwitch) {
//    print("click!")
//
//    if(mySwitch.isOn) {
//        print("ok")
//    }else {
//        print("no")
//    }
//
//}





// UISegmentControl

// 创建
//let seg = UISegmentedControl(frame:CGRect(x:50, y:50, width:270, height:30)) // 高度无效
//var i:Int = 2;
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//
//    // 创建
//    //  let seg = UISegmentedControl(frame:CGRect(x:50, y:50, width:170, height:30)) // 高度无效
//
       // let seg = UISegmentedControl(items: ["1","2"])   另一种创建方法

//    self.view.addSubview(seg)
//
//    // 设置分段控制器的按钮  默认蓝色
//    seg.insertSegment(withTitle: "第1个------------------------按钮", at: 0, animated: true)
//    seg.insertSegment(withTitle: "第2个按钮", at: 1, animated: true)
//
//    // 点击事件
//    seg.addTarget(self, action: #selector(click(_:)), for: UIControlEvents.valueChanged)
//
//
//    // 设置是否保存选中状态   // 点击就消失选中状态  默认为false
//    seg.isMomentary = true
//
//
//    // 设置宽度自适应  不会自动分配 默认是false
//    seg.apportionsSegmentWidthsByContent = true
//
//
//    // 手动的设置宽度  如果另一个不去设置的话， 另一个会自动分配剩余的宽度
//    seg.setWidth(30, forSegmentAt: 0)
//
//
//    // 设置内容偏移量 --- 里边的文字区域
//    seg.setContentOffset(CGSize(width: 100, height: 10), forSegmentAt: 1)
//
//    // 默认选中的
//    seg.selectedSegmentIndex = 1
//
//    // 改变颜色
//    seg.tintColor = UIColor.orange
//
//}
//
//@objc func click(_ seg:UISegmentedControl) {
//    print(seg.selectedSegmentIndex,"按钮被点击")
//}
//
//override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//    // 动态插入  点击时候就插入   标题插入
//    self.i = self.i+1
//    seg.insertSegment(withTitle: "第\(self.i)个按钮", at: self.i, animated: true)
//}
//
//


