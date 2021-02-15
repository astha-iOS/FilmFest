//
//  MovieLibraryDataService.swift
//  FilmFest
//
//  Created by Astha yadav on 14/02/21.
//

import UIKit

class MovieLibraryDataService: NSObject,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        return UITableViewCell()
    }
    
    
    

}
