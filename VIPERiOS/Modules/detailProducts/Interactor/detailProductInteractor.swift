//
//  detailProductInteractor.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation

class detailProductInteractor: detailProductInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: detailProductInteractorOutputProtocol?
    var localDatamanager: detailProductLocalDataManagerInputProtocol?
    var remoteDatamanager: detailProductRemoteDataManagerInputProtocol?

}

extension detailProductInteractor: detailProductRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
