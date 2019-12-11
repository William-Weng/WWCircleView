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
    @IBOutlet weak var circleView2: WWCircleView!
    @IBOutlet weak var circleView3: WWCircleView!
    @IBOutlet weak var lineView: WWLineView!
    @IBOutlet weak var nomeyLabel: WWAnimationLabel!
    @IBOutlet weak var percentLabel: WWAnimationLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeValue(_ sender: UISlider) {
    
        let animationDuration: TimeInterval = 1.5
        let rate = CGFloat(sender.value)
        
        circleView.setting(animationDuration: animationDuration)
        circleView.drawing(with: rate)
        
        circleView2.setting(animationDuration: animationDuration)
        circleView2.drawing(with: rate * 1.5)

        circleView3.setting(animationDuration: animationDuration)
        circleView3.drawing(with: rate * 1.5)
        
        nomeyLabel.setting(startNumber: 1, endNumber: 12345678, animationDuration: animationDuration, numberType: .money(currencyCode: "HKD"))
        nomeyLabel.running()
        
        lineView.setting(animationDuration: animationDuration)
        lineView.drawing(with: rate)
        
        percentLabel.setting(startNumber: 1, endNumber: TimeInterval(rate), animationDuration: animationDuration, numberType: .percent)
        percentLabel.running()
    }
}
```