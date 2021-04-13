//
//  MovimentWireFrame.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

class MovimentWireFrame: MovimentWireFrameProtocol {

    class func createMovimentModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "MovimentView")
        if let view = navController.children.first as? MovimentView {
            let presenter: MovimentPresenterProtocol & MovimentInteractorOutputProtocol = MovimentPresenter()
            let interactor: MovimentInteractorInputProtocol & MovimentRemoteDataManagerOutputProtocol = MovimentInteractor()
            let localDataManager: MovimentLocalDataManagerInputProtocol = MovimentLocalDataManager()
            let remoteDataManager: MovimentRemoteDataManagerInputProtocol = MovimentRemoteDataManager()
            let wireFrame: MovimentWireFrameProtocol = MovimentWireFrame()
            
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
        return UIStoryboard(name: "MovimentView", bundle: Bundle.main)
    }
    
}
