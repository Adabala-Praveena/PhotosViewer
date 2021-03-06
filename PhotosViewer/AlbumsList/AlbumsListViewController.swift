//
//  AlbumsListViewController.swift
//  PhotosViewer
//
//  Created by Praveena on 16/06/21.
//  Copyright © 2021 Praveena. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
protocol AlbumsListViewControllerProtocol : BaseListViewControllerProtocol {
    var dataSourceRelay : BehaviorRelay<AlbumsListTableViewDataSourceProtocol?> { get }

}
class AlbumsListViewController: UIViewController {

    @IBOutlet var albumsListView: AlbumsListView!
    var  viewModel : AlbumsListViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.setupBindings(with : self)
        // Do any additional setup after loading the view.
    }


}

extension AlbumsListViewController : AlbumsListViewControllerProtocol {
    var animateSpinner: PublishSubject<Bool> {
        return albumsListView.animateSpinner
    }
    
    var dataSourceRelay: BehaviorRelay<AlbumsListTableViewDataSourceProtocol?> {
        return albumsListView.dataSourceRelay
    }
    
    var indexPathSelected: Observable<IndexPath> {
        return albumsListView.indexPathSelected
    }
    
    
}
