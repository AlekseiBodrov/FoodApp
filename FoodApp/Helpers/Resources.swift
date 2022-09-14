//
//  Resources.swift
//  FoodApp
//
//  Created by Алексей on 14.09.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#D02A05")
        static let inactive = UIColor(hexString: "#BABABA")

        static let background = UIColor(hexString: "#F8F9F9")
        static let seporator = UIColor(hexString: "#E8ECEF")
        static let seconderuy = UIColor(hexString: "#F0F3FF")

        static let titleGray = UIColor(hexString: "#545C77")
    }

    enum Images {
        enum TabBar {
        static let home = UIImage(systemName: "house")
        static let favorite = UIImage(systemName: "heart")
        static let person = UIImage(systemName: "person")
        static let orders = UIImage(systemName: "clock")
        }
    }

    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

