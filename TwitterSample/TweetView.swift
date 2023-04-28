//
//  TweetView.swift
//  TwitterSample
//
//  Created by takashima kohei on 2023/04/15.
//

import UIKit


class TweetView: UIView {
    @IBOutlet weak var tweetLabel: UILabel!
    
    init() {
        super.init(frame: .zero)
        let view = UINib(nibName: "TweetView", bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
