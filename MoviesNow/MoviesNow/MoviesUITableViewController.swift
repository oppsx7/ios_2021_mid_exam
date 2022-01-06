//
//  MoviesUITableViewController.swift
//  MoviesNow
//
//  Created by Todor Dimitrov on 6.01.22.
//

import UIKit

class MoviesUITableViewController: UITableViewController {

    var model = Model()
    var movies: [Movie]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        movies = model.movies
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let title = movies?[indexPath.row].title,
              let image = movies?[indexPath.row].photo,
              let description = movies?[indexPath.row].info else { return UITableViewCell()}
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        cell.setup(title, image: image, description: description)
         

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MovieCell
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "singleMovieSegue", sender: cell)
    }

}
//MARK: - Segue handling
extension MoviesUITableViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "singleMovieSegue" {
            if let nav = segue.destination as? UINavigationController,
               let vc = nav.viewControllers.first as? ViewController,
               let cell = sender as? MovieCell {
                vc.setup(title: cell.getTitle(), image: cell.getImage(), description: cell.getDescription(), releaseDate: cell.getReleaseDate())
            }
        }
    }
}
