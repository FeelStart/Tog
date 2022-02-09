//
//  CreateViewController.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class CreateViewController: BaseViewController {

    let mainInputView = MainInputView()

    let textView = CreateTextView()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalTransitionStyle = .flipHorizontal
        modalPresentationStyle = .fullScreen

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(textView)
        textView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(view)
        }

        mainInputView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 44)
        textView.inputView = mainInputView
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.becomeFirstResponder()
    }
}
