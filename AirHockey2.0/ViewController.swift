
import UIKit

class ViewController: UIViewController {
    var topGoal: TopGoalConstraints!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topGoal = TopGoalConstraints(fakeView: FakeView(view: self.view))
        self.view.addSubview(topGoal)
    }
}

