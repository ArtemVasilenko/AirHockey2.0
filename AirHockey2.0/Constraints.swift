import UIKit

struct FakeView {
//    let myScreenWidth = UIScreen.main.bounds.width
//    let myScreenHeigth = UIScreen.main.bounds.height
    
    var view: UIView = {
        var myView = UIView()
        let myScreenWidth = UIScreen.main.bounds.width
        let myScreenHeigth = UIScreen.main.bounds.height
        myView = UIView(frame: CGRect(x: 0, y: 0, width: myScreenWidth, height: myScreenHeigth))
        
        return myView
    }()
    
}

class TopGoalConstraints: UIView {
    init(fakeView: FakeView) {
        super.init(frame: UIScreen.main.bounds)
        
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


