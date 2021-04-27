//
//  detailProductView.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation
import UIKit

class detailProductView: UIViewController {

    // MARK: Properties
    var presenter: detailProductPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        print("megaman")
    }
}

extension detailProductView: detailProductViewProtocol {
    // TODO: implement view output methods
}
