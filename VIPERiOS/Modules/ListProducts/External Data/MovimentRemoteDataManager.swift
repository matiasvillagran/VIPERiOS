//
//  MovimentRemoteDataManager.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 13-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import Foundation

class MovimentRemoteDataManager:MovimentRemoteDataManagerInputProtocol {
    
    var remoteRequestHandler: MovimentRemoteDataManagerOutputProtocol?
    
    func getProducts() -> [Product] {
        return [Product(sku: "A", stock: 10, name: "manzana", description: "La manzana es el fruto comestible de la especie Malus domestica, llamada comúnmente manzano"), Product(sku: "B", stock: 5, name: "pera", description: "Se denomina pera al fruto de distintas especies del género Pyrus, integrado por árboles caducifolios conocidos comúnmente como perales.")]
    }
}
