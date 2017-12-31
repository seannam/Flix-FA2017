//
//  MovieCell.swift
//  Flix-CP-FA2017
//
//  Created by Sean Nam on 11/17/17.
//  Copyright © 2017 seannam. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie! {
        willSet(movie) {
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            posterImageView.af_setImage(withURL: movie.posterUrl!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
