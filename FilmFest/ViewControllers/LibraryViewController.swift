//
//  LibraryViewController.swift
//  FilmFest
//
//  Created by Astha yadav on 14/02/21.
//

import UIKit

class LibraryViewController: UIViewController {

    @IBOutlet weak var libraryTableView: UITableView!
    @IBOutlet var dataService : MovieLibraryDataService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.libraryTableView.dataSource = dataService
    }
    

    

}
