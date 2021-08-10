# CircleChartUI
Swift - CircleChart UI 

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
