//
//  MovimentPresenter.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation

class MovimentPresenter  {
    
    // MARK: Properties
    weak var view: MovimentViewProtocol?
    var interactor: MovimentInteractorInputProtocol?
    var wireFrame: MovimentWireFrameProtocol?
    
}

extension MovimentPresenter: MovimentPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension MovimentPresenter: MovimentInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
