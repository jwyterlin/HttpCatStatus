//
//  ViewController.swift
//  HttpCatStatus
//
//  Created by Jhonathan Wyterlin on 10/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = catTableView.dequeueReusableCell(withIdentifier: "catCell", for: indexPath)
    cell.textLabel?.text = "CatCell"

    return cell
  }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}
