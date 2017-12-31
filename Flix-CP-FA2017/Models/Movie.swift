//
//  Movie.swift
//  Flix-CP-FA2017
//
//  Created by Sean Nam on 12/9/17.
//  Copyright © 2017 seannam. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var overview: String
    var releaseDate: String
    
    var posterUrl: URL?
    var backdropUrl: URL?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        
        let baseUrlString = "https://image.tmdb.org/t/p/w500"

        let posterPath = dictionary["poster_path"] as? String
        if let posterPath = posterPath {
            let fullPosterPath = baseUrlString + posterPath
            let posterURL = URL(string: fullPosterPath)
            if posterURL != nil {
                posterUrl = posterURL
            }
        }
        
        let backdropPath = dictionary["backdrop_path"] as? String
        if let backdropPath = backdropPath {
            let fullBackdropPath = baseUrlString + backdropPath
            let backdropURL = URL(string: fullBackdropPath)
            if backdropURL != nil {
                backdropUrl = backdropURL
            }
        }
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }

}
