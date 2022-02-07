//
//  MainInputView.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class MainInputView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var intrinsicContentSize: CGSize {
        CGSize(width: UIView.noIntrinsicMetric, height: 44)
    }
    
}

class MainInputViewItem: UIButton {

    convenience init(title: String? = nil,
                     image: UIImage? = nil,
                     selectedImage: UIImage? = nil,
                     highlightImage: UIImage? = nil) {
        self.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)
        self.setImage(selectedImage, for: .selected)
        self.setImage(highlightImage, for: .highlighted)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
