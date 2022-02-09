//
//  FootprintListViewController.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class FootprintListViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Tog"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(rightBarClicked(sender:)))
    }

    @objc func rightBarClicked(sender: Any) {
        let vc = CreateViewController()
        present(vc, animated: true, completion: nil)

        //vc.hidesBottomBarWhenPushed = true
        //navigationController?.pushViewController(vc, animated: true)
    }
}
