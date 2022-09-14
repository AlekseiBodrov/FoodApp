//
//  HomeController.swift
//  FoodApp
//
//  Created by Алексей on 14.09.2022.
//


import UIKit

class HomeController: BaseController {

    private lazy var titleLabel: UILabel = {
        let lable = UILabel()
        lable.font = .systemFont(ofSize: 36, weight: .semibold)
        lable.text = "Delicious\nfood for you"
        lable.textColor = .black
        lable.textAlignment = .left
        lable.numberOfLines = 2
        return lable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()

    }

    private func setupUI() {
        setupBarButtonItem()
        setupConstraints()
    }

    func setupConstraints() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }

    func setupBarButtonItem() {
        let baritem = UIBarButtonItem(image: UIImage(systemName: "slider.horizontal.3"), style: .plain, target: self, action: #selector(showDetailController))
        self.navigationItem.leftBarButtonItem = baritem

        let baritem1 = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(showDetailController))
        self.navigationItem.rightBarButtonItem = baritem1
    }

    @objc func showDetailController() {
        let settingController = SettingController()
        navigationController?.pushViewController(settingController, animated: true)
//        print(navigationController)
    }
}

