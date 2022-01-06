//
//  ViewController.swift
//  MoviesNow
//
//  Created by Todor Dimitrov on 6.01.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var movieImage = UIImage()
    var movieDesc = ""
    var movieReleaseDate = ""
    var movieTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIBActions()
    }
    
    @IBAction func didTapBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func setup(title: String, image: UIImage, description: String, releaseDate: String) {
        movieTitle = title
        movieImage = image
        movieDesc = description
        movieReleaseDate = releaseDate
    }
    
    func setupIBActions() {
        navigationController?.navigationItem.title = movieTitle
        movieImageView.image = movieImage
        movieDescription.text = movieDesc
        releaseDateLabel.text = movieReleaseDate
    }


}

