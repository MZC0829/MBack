# MBack
##### Custom backBarButtonItem in Swift.

---


## Cocoapods

### 1. Add the following line to your Podfile:

```
platform :ios, '9.0'

target 'YourIosApps' do

  use_frameworks!

  pod 'MBack'

end
```

### 2. Then, run the following command:

```
$ pod install
```


## Carthage

### 1、run the following command:
```
$ touch Cartfile
```

### 2、Add the following line to your Cartfile:

```
github "MZC0829/MBack"
```

### 3、run the following command:

```
$ carthage update
```



## Requirements
>
- iOS 9.0+
- swift 3+ and swift 4



## Usage

### - just like


```
override func viewWillAppear(_ animated: Bool)
{
    super.viewWillAppear(animated)
        
    self.MBackButton(image: "Your custom back image")
}

```

### - or
```
override func viewWillAppear(_ animated: Bool)
{
    super.viewWillAppear(animated)
        
    self.MBackButton(image: "Your custom back image", popMethod: ENUMPopMethod.Root, title: "Back")
}
```

## PS

### 自定义返回按钮后，屏幕左边缘滑动返回会失效，解决办法如下：
##### 1、让 ViewController 继承 UIGestureRecognizerDelegate

##### 2、

```
override func viewDidLoad()
{
    super.viewDidLoad()
    self.navigationController?.interactivePopGestureRecognizer?.delegate = self        
}
```
##### 3、
```
func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool
{
        if gestureRecognizer == self.navigationController?.interactivePopGestureRecognizer
        {
            return self.navigationController!.viewControllers.count > 1
        }
        return true      
}

