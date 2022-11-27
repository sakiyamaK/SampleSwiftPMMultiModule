import UIKit
import DeclarativeUIKit
import Home
import MyPage

public struct App {
    public init() { }
}

public extension App {
    static func viewController() -> UIViewController {

        let tab = UITabBarController()

        let vc1 = HomeViewController.make(posts: Post.tests)
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        let vc2 = MyPageViewController.make(user: User.test)
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        tab.viewControllers = [vc1, vc2]

        return tab
    }
}
