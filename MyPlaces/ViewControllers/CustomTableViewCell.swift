//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by Александр Реунов on 08.03.2020.
//  Copyright © 2020 Александр Реунов. All rights reserved.
//  the project is completed

import UIKit
import Cosmos

class CustomTableViewCell: UITableViewCell {

 
    @IBOutlet weak var imegeOfPlace: UIImageView! {
        didSet {
            imegeOfPlace.layer.cornerRadius = imegeOfPlace.frame.size.height / 2
            imegeOfPlace.clipsToBounds = true
            
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet var cosmosView: CosmosView! {
        didSet {
            cosmosView.settings.updateOnTouch = false
        }
    }
    
}
