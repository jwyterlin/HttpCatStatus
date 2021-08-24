import Foundation
import UIKit.UIImage

protocol CatListModelProtocol: AnyObject {
  func reloadData()
}

class CatListModel {

  var imagem503 = UIImage(named: "cat_503")
  weak var catListModelProtocol: CatListModelProtocol?

  func requestToApiCat(){
    let url = "https://http.cat/404"
    let urlSession = URLSession(configuration: URLSessionConfiguration.default)
    urlSession.dataTask(with: URL(string: url)!){ data, response, error in

      DispatchQueue.main.async {
        if let data = data {
          self.imagem503 = UIImage(data: data)
        }

        self.catListModelProtocol?.reloadData()
      }
    }.resume()
  }
  
}
