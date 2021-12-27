//
//  AlbumsListResponse.swift
//  PhotosViewer
//
//  Created by Praveena on 16/06/21.
//  Copyright © 2021 Praveena. All rights reserved.
//

import Foundation

struct Album : Decodable {
    var id : Int?
    var title : String?
}
