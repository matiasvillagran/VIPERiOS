//
//  MovimentPresenter.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

class MovimentPresenter  {
    
    // MARK: Properties
    weak var view: MovimentViewProtocol?
    weak var vc : MovimentView?
    var interactor: MovimentInteractorInputProtocol?
    var wireFrame: MovimentWireFrameProtocol?
    
}

extension MovimentPresenter: MovimentPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
        interactor?.remoteDatamanager?.remoteRequestHandler?.getData()
    }
    
    func goToDetails() {
        let detail = detailProductWireFrame.createdetailProductModule()
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let delegate = windowScene.delegate as? SceneDelegate else { return }
        delegate.window?.rootViewController = detail
     }
}

extension MovimentPresenter: MovimentInteractorOutputProtocol {
    func sendDataPresenter(products: [Product]) {
        view?.presentPushDataView(data: products)
    }
    
    // TODO: implement interactor output methods
    
    
}
