//
//  MovimentProtocols.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

protocol MovimentViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: MovimentPresenterProtocol? { get set }
}

protocol MovimentWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createMovimentModule() -> UIViewController
}

protocol MovimentPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: MovimentViewProtocol? { get set }
    var interactor: MovimentInteractorInputProtocol? { get set }
    var wireFrame: MovimentWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol MovimentInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol MovimentInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: MovimentInteractorOutputProtocol? { get set }
    var localDatamanager: MovimentLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: MovimentRemoteDataManagerInputProtocol? { get set }
}

protocol MovimentDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol MovimentRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: MovimentRemoteDataManagerOutputProtocol? { get set }
}

protocol MovimentRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol MovimentLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
