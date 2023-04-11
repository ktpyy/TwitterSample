//
//  TweetTableViewCell.swift
//  TwitterSample
//
//  Created by takashima kohei on 2023/04/07.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var tweetTextView: UITextView!
    @IBOutlet weak var idLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tweetTextView.isScrollEnabled = false
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func setCell(tweet: Tweet) {
        self.idLabel.text = tweet.id
        self.tweetTextView.text = tweet.body
        self.timeLabel.text = tweet.createdAt.formatted()
    }
}
