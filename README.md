# CircleChartUI
Swift - CircleChart UI 

```swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tansu: CircleCharts!

    override func viewDidLoad() {

        super.viewDidLoad()
        self.tansu.circleBorderColor = UIColor.init(red: 244.0/255.0, green: 222.0/255.0, blue: 254.0/255.0, alpha: 1.0)
        self.tansu.circleFilledColor = UIColor.init(red: 184.0/255.0, green: 94.0/255.0, blue: 240.0/255.0, alpha: 1.0)
        self.tansu.percentage = 0.9
        self.tansu.progressAnimation(duration: 3.0)

    }
}
```
