//
//  Photo.swift
//  FlickrSearch
//
//  Created by joakim lundberg on 2020-11-27.
//

import Foundation
import UIKit

struct Photo: Decodable {
    
    var id: String
    var owner: String
    var secret: String
    var server: String
    var farm: Int
    var title: String
    var ispublic: Int
    var isfriend: Int
    var isfamily: Int
    
  
}
