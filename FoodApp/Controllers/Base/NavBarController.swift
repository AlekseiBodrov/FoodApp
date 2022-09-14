//
//  NavBarController.swift
//  FoodApp
//
//  Created by Алексей on 14.09.2022.
//

import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }

    private func configureView(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helvelticaRegular(with: 17)
        ]

        navigationBar.addBottomBorder(with: Resources.Colors.seporator, height: 1)
    }
}
