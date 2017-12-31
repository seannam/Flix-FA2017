//
//  PosterCell.swift
//  Flix-CP-FA2017
//
//  Created by Sean Nam on 11/24/17.
//  Copyright © 2017 seannam. All rights reserved.
//

import UIKit

class PosterCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    var movie: Movie! {
        willSet(movie) {
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
}
