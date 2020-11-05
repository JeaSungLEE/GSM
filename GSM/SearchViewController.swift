//
//  SearchViewController.swift
//  GSM
//
//  Created by Jercy on 2020/11/05.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AppstoreItemTableViewCell()
        /// 셀 높이 이슈는 이 아래코드 한줄 추가하면 됩니다. 이유는 다음주에 설명해줄게요!
        cell.updateConstraintsIfNeeded()
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
}
