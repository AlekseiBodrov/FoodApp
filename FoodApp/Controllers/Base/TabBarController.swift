//
//  TabBarController.swift
//  FoodApp
//
//  Created by Алексей on 14.09.2022.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureView() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resources.Colors.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let homeController = HomeController()
        let favoriteController = FavoriteController()
        let personController = PersonController()
        let ordersController = OrdersController()

        let homeviewNavigation = NavBarController(rootViewController: homeController)
        let favoriteviewNavigation = NavBarController(rootViewController: favoriteController)
        let personviewNavigation = NavBarController(rootViewController: personController)
        let ordersviewNavigation = NavBarController(rootViewController: ordersController)

        homeviewNavigation.tabBarItem = UITabBarItem(title: nil,
                                                     image: Resources.Images.TabBar.home,
                                                     tag: Tabs.overview.rawValue)
        favoriteviewNavigation.tabBarItem = UITabBarItem(title: nil,
                                                     image: Resources.Images.TabBar.favorite,
                                                     tag: Tabs.session.rawValue)
        personviewNavigation.tabBarItem = UITabBarItem(title: nil,
                                                     image: Resources.Images.TabBar.person,
                                                     tag: Tabs.progress.rawValue)
        ordersviewNavigation.tabBarItem = UITabBarItem(title: nil,
                                                     image: Resources.Images.TabBar.orders,
                                                     tag: Tabs.settings.rawValue)
        setViewControllers([
            homeviewNavigation,
            favoriteviewNavigation,
            personviewNavigation,
            ordersviewNavigation
        ], animated: false)
    }

}

