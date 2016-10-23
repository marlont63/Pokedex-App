//
//  PokeCell.swift
//  Pokedex App
//
//  Created by Marlon Raschid Tavarez Parra on 21/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    var pokemon: Pokemon!
    
    func configureCell(_ pokemon: Pokemon){
        self.pokemon = pokemon
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        nameLbl.text = self.pokemon.name.capitalized
    }
}
