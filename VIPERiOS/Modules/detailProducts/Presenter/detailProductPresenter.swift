//
//  detailProductPresenter.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation

class detailProductPresenter  {
    
    // MARK: Properties
    weak var view: detailProductViewProtocol?
    var interactor: detailProductInteractorInputProtocol?
    var wireFrame: detailProductWireFrameProtocol?
    
}

extension detailProductPresenter: detailProductPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension detailProductPresenter: detailProductInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
