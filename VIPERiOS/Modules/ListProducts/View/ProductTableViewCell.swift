//
//  ProductTableViewCell.swift
//  VIPERiOS
//
//  Created by Carlos Villagran Oyarce on 20-04-21.
//  Copyright © 2021 Matias. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
