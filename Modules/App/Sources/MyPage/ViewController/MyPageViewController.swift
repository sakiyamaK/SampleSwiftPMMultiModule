import UIKit
import DeclarativeUIKit
@_exported import Models

public final class MyPageViewController: UIViewController {
    
    private var user: User!
    
    public override func loadView() {
        super.loadView()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(setupLayout),
                                               name: Notification.Name("INJECTION_BUNDLE_NOTIFICATION"), object: nil)
        setupLayout()
    }
}

public extension MyPageViewController {
    static func make(user: User) -> MyPageViewController {
        let vc = MyPageViewController()
        vc.user = user
        return vc
    }
}

@objc private extension MyPageViewController {
    func setupLayout() {
        self.view.backgroundColor = .white
        
        self.declarative {
            UILabel(user.name)
                .textColor(.red)
                .font(UIFont.systemFont(ofSize: 32))
                .center()
        }
    }
}
