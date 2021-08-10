# CircleChartUI
Swift - CircleChart UI 

<img width="251" alt="스크린샷 2021-08-10 오전 9 29 11" src="https://user-images.githubusercontent.com/5070020/128790676-8d9421ba-a278-4e92-97e7-a01876e56325.png">

```swift
import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var charts: CircleCharts!

    override func viewDidLoad() {

        super.viewDidLoad()
        self.charts.circleBorderColor = UIColor.init(red: 244.0/255.0, green: 222.0/255.0, blue: 254.0/255.0, alpha: 1.0)
        self.charts.circleFilledColor = UIColor.init(red: 184.0/255.0, green: 94.0/255.0, blue: 240.0/255.0, alpha: 1.0)
        self.charts.percentage = 0.9
        self.charts.progressAnimation(duration: 3.0)

    }
}
```
