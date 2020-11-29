//
//  ViewController.swift
//  FlickrSearch
//
//  Created by joakim lundberg on 2020-11-27.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var searchButton = UIButton()
    var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView(){

        searchButton.backgroundColor = .blue
        searchButton.setTitle("Get image!", for: .normal)
        searchButton.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        searchButton.addTarget(self, action: #selector(searchAction), for: .touchUpInside)
        self.view.addSubview(searchButton)
        
    }

    @objc func searchAction(sender: UIButton!) {
        print("Button tapped")
       
        let apiKey = "d15ed54396713e80e1ab4895ce8a4b0f"
        let searchString = "dogs"

        let url = URL(string: "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&text=\(searchString)&format=json&nojsoncallback=1")!

        let session = URLSession.shared
      
        let dataTask = session.dataTask(with: url) { (data, response, error) in
                        
            if error == nil && data != nil {
                let decoder = JSONDecoder()
                
                do {
                    let photos = try decoder.decode(Photos.self, from: data!)
                    print(photos)
                }
                catch {
                    print(error)
                    print("Error parsing")
                }
            }
        }
        dataTask.resume()

    
    }
}

