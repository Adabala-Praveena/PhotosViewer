//
//  PhotoDetailFlowCoordinator.swift
//  PhotosViewer
//
//  Created by Praveena on 18/06/21.
//  Copyright © 2021 Praveena. All rights reserved.
//

import Foundation
import UIKit

class PhotoDetailFlowCoordinator : PhotoDetailFlowCoordinating {
    
    weak var navigator : UINavigationController?
    weak var presenter : UIViewController?
    static func prepareView(with photoURL : URL, photoTitle : String?,navigator : UINavigationController?) -> UIViewController {
    let storyboard = UIStoryboard(name: "PhotoDetailStoryboard", bundle: nil)
    
        guard let vc = storyboard.instantiateInitialViewController() as? PhotoDetailViewController else {
            fatalError()
        }
    let flowCoordinator = PhotoDetailFlowCoordinator()
        let viewModel = PhotoDetailViewModel(flowCoordinator: flowCoordinator)
        vc.viewModel = viewModel
        flowCoordinator.presenter = vc
        flowCoordinator.navigator = navigator
        viewModel.photoTitle = photoTitle
        viewModel.photoURLSubject.onNext(photoURL)
        return vc
    }
}
