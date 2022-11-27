import UIKit
import DeclarativeUIKit
@_exported import Models

public class HomeViewController: UIViewController {
    
    private var posts: [Post] = []
        
    public override func loadView() {
        super.loadView()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(setupLayout),
                                               name: Notification.Name("INJECTION_BUNDLE_NOTIFICATION"), object: nil)
        setupLayout()
    }
}

public extension HomeViewController {
    static func make(posts: [Post]) -> HomeViewController {
        let vc = HomeViewController()
        vc.posts = posts
        return vc
    }
}


@objc private extension HomeViewController {
    func setupLayout() {
        self.view.backgroundColor = .white
                        
        self.declarative {
            UIScrollView.vertical {
                UIStackView.vertical {
                    posts.compactMap {
                        UILabel($0.text)
                            .height(100)
                            .padding()
                            .border(color: .gray, width: 1)
                    }
                }
            }
        }
    }
}
