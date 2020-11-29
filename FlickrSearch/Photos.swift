//
//  photos.swift
//  FlickrSearch
//
//  Created by joakim lundberg on 2020-11-28.
//

import Foundation

struct Photos: Decodable  {
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: String?
    let photo: [Photo]
}
