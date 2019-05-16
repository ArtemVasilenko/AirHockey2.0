import UIKit

struct FakeView {
    var view: UIView
}


 class TopGoalConstraints: UIView {
    
   
    init(fakeView: FakeView) {
        super.init(frame: CGRect())
        
        self.backgroundColor = .red
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 150).isActive = true
        self.heightAnchor.constraint(equalToConstant: 30).isActive = true
        self.topAnchor.constraint(equalTo: fakeView.view.topAnchor, constant: 20).isActive = true
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


