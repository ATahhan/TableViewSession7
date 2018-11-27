//
//  Video.swift
//  Play Local Videos
//

//

import Foundation

struct Video
{
    let authorName: String
    let videoFileName: String
    let description: String
    let thumbnailFileName: String
    var isWatched: Bool

    
    static func fetchStaticVideos() -> [Video] {
        let v1 = Video(authorName: "David Tran", videoFileName: "v1", description: "This is an example of local video.", thumbnailFileName: "v1", isWatched: false)
        let v2 = Video(authorName: "Tracy Noah", videoFileName: "v2", description: "This is an example of local video.", thumbnailFileName: "v2", isWatched: false)
        let v3 = Video(authorName: "Brendon Burchard", videoFileName: "v3", description: "This is an example of local video.", thumbnailFileName: "v3", isWatched: false)
        let v4 = Video(authorName: "Elon Musk", videoFileName: "v4", description: "This is an example of local video.", thumbnailFileName: "v4", isWatched: false)
        let v5 = Video(authorName: "David Tran", videoFileName: "v5", description: "This is an example of local video.", thumbnailFileName: "v5", isWatched: false)
        let v6 = Video(authorName: "Steve Jobs", videoFileName: "v6", description: "This is an example of local video.", thumbnailFileName: "v6", isWatched: false)
        let v7 = Video(authorName: "David Tran", videoFileName: "v1", description: "This is an example of local video.", thumbnailFileName: "v1", isWatched: false)
        let v8 = Video(authorName: "Tracy Noah", videoFileName: "v2", description: "This is an example of local video.", thumbnailFileName: "v2", isWatched: false)
        let v9 = Video(authorName: "Brendon Burchard", videoFileName: "v3", description: "This is an example of local video.", thumbnailFileName: "v3", isWatched: false)
        let v10 = Video(authorName: "Elon Musk", videoFileName: "v4", description: "This is an example of local video.", thumbnailFileName: "v4", isWatched: false)
        let v11 = Video(authorName: "David Tran", videoFileName: "v5", description: "This is an example of local video.", thumbnailFileName: "v5", isWatched: false)
        let v12 = Video(authorName: "Steve Jobs", videoFileName: "v6", description: "This is an example of local video.", thumbnailFileName: "v6", isWatched: false)
        
        return [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12]
    }
    
}


