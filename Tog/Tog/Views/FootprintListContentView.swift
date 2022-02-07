//
//  FootprintListContentView.swift
//  Tog
//
//  Created by Jingfu Li on 2022/2/7.
//

import UIKit

class FootprintListContentView: UIView {

    let tableView = UITableView(frame: .zero, style: .grouped)

    var list = [FootprintViewModel]()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalTo(0)
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Public

    func reload(list: [FootprintViewModel]) {
        self.list = list
        tableView.reloadData()
    }
}

extension FootprintListContentView: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as? FootprintListCell {
            cell.update(viewModel: list[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
}
