//
//  MoyaPlugin.swift
//  PhotosViewer
//
//  Created by Praveena on 16/06/21.
//  Copyright © 2021 Praveena. All rights reserved.
//

import Foundation
import Moya

 class MoyaCacheablePlugin: PluginType {
    
  func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
    if let moyaCachableProtocol = target as? MoyaCacheable {
      var cachableRequest = request
      cachableRequest.cachePolicy = moyaCachableProtocol.cachePolicy
      return cachableRequest
    }
    return request
  }
}
