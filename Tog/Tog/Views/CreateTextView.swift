//
//  CreateTextView.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class CreateTextView: UITextView {

    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)

        font = .normalTextFont
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
