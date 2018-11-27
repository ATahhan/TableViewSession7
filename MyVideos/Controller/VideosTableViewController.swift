//
//  VideosTableViewController.swift
//  MyVideos
//


import UIKit

class VideosTableViewController: UIViewController , UITableViewDelegate  , UITableViewDataSource {
    
    
    var videos: [Video] = Video.fetchStaticVideos()
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell
        let video = videos[indexPath.row]
        
        cell.video = video
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        videos[indexPath.row].isWatched = true
        tableView.reloadData()
    }
}







