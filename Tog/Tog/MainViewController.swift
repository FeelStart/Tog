//
//  MainViewController.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit
@_exported import SnapKit

class MainViewController: UITabBarController {

    /// 足迹
    lazy var footprintVC: BaseNavigationController = {
        let vc = BaseNavigationController(rootViewController: FootprintListViewController())
        vc.tabBarItem = UITabBarItem(title: "Tog", image: nil, selectedImage: nil)
        return vc
    }()

    /// 个人主页
    lazy var homepageVC: BaseNavigationController = {
        let vc = BaseNavigationController(rootViewController: HomepageViewController())
        vc.tabBarItem = UITabBarItem(title: "Homepage", image: nil, selectedImage: nil)
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .backgroundColor
        tabBar.backgroundColor = .tabbarBackgroundColor
        setViewControllers([footprintVC, homepageVC], animated: false)

        // tabbar item 放不下
        // moreNavigationController
    }

}
