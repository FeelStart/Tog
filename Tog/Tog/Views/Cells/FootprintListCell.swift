//
//  FootprintListCell.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class FootprintListCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func update(viewModel: FootprintViewModel) {
    }

}
