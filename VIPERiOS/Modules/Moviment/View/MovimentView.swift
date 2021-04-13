//
//  MovimentView.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

class MovimentView: UIViewController {

    // MARK: Properties
    var presenter: MovimentPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MovimentView: MovimentViewProtocol {
    // TODO: implement view output methods
}
