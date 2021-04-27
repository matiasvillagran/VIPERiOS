//
//  detailProductWireFrame.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

class detailProductWireFrame: detailProductWireFrameProtocol {

    class func createdetailProductModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "detailProductView")
        if let view = navController.children.first as? detailProductView {
            let presenter: detailProductPresenterProtocol & detailProductInteractorOutputProtocol = detailProductPresenter()
            let interactor: detailProductInteractorInputProtocol & detailProductRemoteDataManagerOutputProtocol = detailProductInteractor()
            let localDataManager: detailProductLocalDataManagerInputProtocol = detailProductLocalDataManager()
            let remoteDataManager: detailProductRemoteDataManagerInputProtocol = detailProductRemoteDataManager()
            let wireFrame: detailProductWireFrameProtocol = detailProductWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.localDatamanager = localDataManager
            interactor.remoteDatamanager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            
            return navController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "detailProductView", bundle: Bundle.main)
    }
    
}
