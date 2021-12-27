//
//  PhotosListResponse.swift
//  PhotosViewer
//
//  Created by Praveena on 16/06/21.
//  Copyright © 2021 Praveena. All rights reserved.
//

import Foundation
struct Photo : Decodable {
    var title : String?
    var photoURL : String?
    var thumbnailURL : String?
    
    enum CodingKeys :String, CodingKey {
        case title
        case photoURL = "url"
        case thumbnailURL = "thumbnailUrl"
        
    }
}
