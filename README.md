# WWCircleView
圓形 / 直線的進度條，有動畫的Label

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://developer.apple.com/swift/) [![Version](https://img.shields.io/cocoapods/v/WWCircleView.svg?style=flat)](http://cocoapods.org/pods/WWCircleView) [![Platform](https://img.shields.io/cocoapods/p/WWCircleView.svg?style=flat)](http://cocoapods.org/pods/WWCircleView) [![License](https://img.shields.io/cocoapods/l/WWCircleView.svg?style=flat)](http://cocoapods.org/pods/WWCircleView)

![WWCircleView - 圓形的進度條](https://raw.githubusercontent.com/William-Weng/WWCircleView/master/WWCircleView.gif)

# 使用範例
![IBOutlet](https://raw.githubusercontent.com/William-Weng/WWCircleView/master/IBOutlet.png)

```swift
import UIKit
import WWCircleView

final class ViewController: UIViewController {

    @IBOutlet weak var circleView: WWCircleView!
    @IBOutlet weak var animationLabel: WWAnimationLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeValue(_ sender: UISlider) {
    
        let animationDuration: TimeInterval = 5
        
        circleView.setting(animationDuration: animationDuration)
        circleView.drawing(with: CGFloat(sender.value))
        
        animationLabel.setting(startNumber: 100, endNumber: 10000, animationDuration: animationDuration, currencyCode: "HKD")
        animationLabel.running()
    }
}

```