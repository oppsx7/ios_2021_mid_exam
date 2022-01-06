//
//  MovieCell.swift
//  MoviesNow
//
//  Created by Todor Dimitrov on 6.01.22.
//

import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movieDescription: MovieInfo?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(_ title: String, image: String, description: MovieInfo) {
        titleLabel.text = title
        movieImageView.image = UIImage(named: image)
        movieDescription = description
    }
    
    func getTitle() -> String {
        return titleLabel.text ?? "Unknown"
    }
    
    func getImage() -> UIImage {
        return movieImageView.image ?? UIImage()
    }
    
    func getDescription() -> String {
        return movieDescription?.description ?? "No description"
    }
    
    func getReleaseDate() -> String {
        return movieDescription?.releaseDate ?? " Unknown release date"
    }
    
    

}
