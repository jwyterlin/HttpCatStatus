//
//  ViewController.swift
//  HttpCatStatus
//
//  Created by Jhonathan Wyterlin on 10/08/21.
//

import UIKit

class CatListViewController: UIViewController, CatListModelProtocol {

    @IBOutlet weak var catTableView: UITableView!

    let catListModel = CatListModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        catListModel.catListModelProtocol = self
        catListModel.requestToApiCat()
    }

  func reloadData() {
    self.catTableView.reloadData()
  }
}

extension CatListViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = catTableView.dequeueReusableCell(withIdentifier: "catCell", for: indexPath)
    cell.textLabel?.text = "CatCell"
    cell.imageView?.image = catListModel.imagem503

    return cell
  }
}

extension CatListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.5
    }
}
