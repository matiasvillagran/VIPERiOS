//
//  detailProductProtocols.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

protocol detailProductViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: detailProductPresenterProtocol? { get set }
}

protocol detailProductWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createdetailProductModule() -> UIViewController
}

protocol detailProductPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: detailProductViewProtocol? { get set }
    var interactor: detailProductInteractorInputProtocol? { get set }
    var wireFrame: detailProductWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol detailProductInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol detailProductInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: detailProductInteractorOutputProtocol? { get set }
    var localDatamanager: detailProductLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: detailProductRemoteDataManagerInputProtocol? { get set }
}

protocol detailProductDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol detailProductRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: detailProductRemoteDataManagerOutputProtocol? { get set }
}

protocol detailProductRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol detailProductLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
