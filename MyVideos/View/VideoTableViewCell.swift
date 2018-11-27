//
//  VideoTableViewCell.swift
//  MyVideos
//


import UIKit

class VideoTableViewCell: UITableViewCell
{
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var videoStaticImageView: UIImageView!
    @IBOutlet weak var watchedView: UIView!
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: video.thumbnailFileName)
        thumbnailImageView.layer.cornerRadius = 8.0
        thumbnailImageView.layer.masksToBounds = true
        usernameLabel.text = video.authorName
        
        if video.isWatched {
            thumbnailImageView.alpha = 0.3
            usernameLabel.alpha = 0.3
            videoStaticImageView.alpha = 0.3
            
            self.watchedView.isHidden = false
        }
    }
    
    // Solution: override prepareForResuse() to restore the cell back to its original state
    // Uncomment next function to fix the bug
    
//    override func prepareForReuse() {
//        thumbnailImageView.alpha = 1
//        usernameLabel.alpha = 1
//        videoStaticImageView.alpha = 1
//
//        self.watchedView.isHidden = true
//    }
    
}
