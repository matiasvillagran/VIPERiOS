//
//  MovimentInteractor.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation

class MovimentInteractor: MovimentInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: MovimentInteractorOutputProtocol?
    var localDatamanager: MovimentLocalDataManagerInputProtocol?
    var remoteDatamanager: MovimentRemoteDataManagerInputProtocol?

}

extension MovimentInteractor: MovimentRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
