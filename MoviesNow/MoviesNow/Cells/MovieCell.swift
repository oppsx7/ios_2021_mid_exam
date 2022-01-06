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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(_ title: String, image: String) {
        titleLabel.text = title
        movieImageView.image = UIImage(named: image)
    }

}
