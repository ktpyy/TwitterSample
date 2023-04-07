//
//  TweetTableViewCell.swift
//  TwitterSample
//
//  Created by takashima kohei on 2023/04/07.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell(tweet: Tweet) {
        self.idLabel.text = tweet.id
        self.tweetLabel.text = tweet.body
    }
}
