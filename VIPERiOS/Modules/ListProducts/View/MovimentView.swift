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
    
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    

    // MARK: Properties
    var presenter: MovimentPresenterProtocol?
    var name : [Product] = []
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        
    }
}

extension MovimentView: MovimentViewProtocol {
    func presentPushDataView(data: [Product]) {
        name = data
        
    }
    
    // TODO: implement view output methods
}

extension MovimentView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! ProductTableViewCell
        let productos = name[indexPath.row]
        cell.nameProduct.text = productos.name
        cell.productDescription.text = productos.description
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.goToDetails()
    }
    
    
}

extension UIViewController {
    
    static func loadFromNib(bundle: Bundle? = nil) -> Self {
        
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }

        return instantiateFromNib()
    }
}
