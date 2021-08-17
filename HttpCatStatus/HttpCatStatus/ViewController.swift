//
//  ViewController.swift
//  HttpCatStatus
//
//  Created by Jhonathan Wyterlin on 10/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catTableView: UITableView!

    var imagem503 = UIImage(named: "cat_503")

    override func viewDidLoad() {
        super.viewDidLoad()
        requestToApiCat()
    }

    func requestToApiCat(){
        let url = "https://http.cat/404"
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        urlSession.dataTask(with: URL(string: url)!){ data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    self.imagem503 = UIImage(data: data)
                }
                self.catTableView.reloadData()
            }
        }.resume()
    }
}

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 8
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = catTableView.dequeueReusableCell(withIdentifier: "catCell", for: indexPath)
    cell.textLabel?.text = "CatCell"
    cell.imageView?.image = imagem503

    return cell
  }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.5
    }
}
