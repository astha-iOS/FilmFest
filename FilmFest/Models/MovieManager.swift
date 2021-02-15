//
//  MovieManager.swift
//  FilmFest
//
//  Created by Astha yadav on 13/02/21.
//

import Foundation

class MovieManager {
    
    var movieToSeeCount : Int {return moviesToSeeArray.count}
    var movieSeenCount : Int {return moviesSeenArray.count}
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovie(movie:Movie){
        
        if !moviesToSeeArray.contains(movie){
            moviesToSeeArray.append(movie)
        }
    }
    
    func movieAtIndex(index:Int) -> Movie {
        return moviesToSeeArray[index]
    }
    
    func checkOffMovieAtIndex(index:Int){
        guard index < movieToSeeCount else { return }

        let checkedMovie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(checkedMovie)
        
    }
    
    func checkedOffMovieAtIndex(index:Int) -> Movie {
        return moviesSeenArray[index]
        
    }
    
    func clearArrays(){
        moviesToSeeArray.removeAll()
        moviesSeenArray.removeAll()
    }
}
