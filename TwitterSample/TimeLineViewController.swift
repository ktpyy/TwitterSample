//
//  ViewController.swift
//  TwitterSample
//
//  Created by takashima kohei on 2023/04/07.
//

import UIKit
import Foundation


class TimeLineViewController: UIViewController {
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var tweets: [Tweet] = []
    let TableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "タイムライン"
        tableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "TweetTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        self.setupTweet()
        setupButton()
    }
    
    func setupButton() {
        customButton.layer.cornerRadius = 30
        customButton.backgroundColor = UIColor(red: 0.39, green: 0.9, blue: 0.89, alpha: 1.0)
    }
    
    func setupTweet() {
        tweets = [Tweet(id: "takashima", body: "本文ツイート　aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", createdAt: Date()), Tweet(id: "kohei", body: "二回目", createdAt: Date()), Tweet(id: "iphone", body: "どこいった", createdAt: Date())]
    }
}

extension TimeLineViewController: UITableViewDataSource {
    // セクションごとにセルの個数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    // セルの中身を返す
    func tableView(_ tablevView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell", for: indexPath) as! TweetTableViewCell
        
        cell.setCell(tweet: tweets[indexPath.row])
        return cell
    }
}
    extension TimeLineViewController: UITableViewDelegate {
        // セルがタップされた時の処理を書く
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("セルがタップされました。")
        }
        // スクロールした時の処理を書く
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            return
        }
    }
