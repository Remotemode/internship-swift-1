//
//  ItemModel.swift
//  internship-swift
//
//  Created by Alexandr on 4/7/21.
//

struct ItemModel{
    let description: String
    let expertComment: String
    let id: Int
    let imageUrl: String
    let title: String
    
    init(description: String = "description", expertComment: String = "comment", id: Int, imageUrl: String, title: String = "title") {
        self.description = description
        self.expertComment = expertComment
        self.id = id
        self.imageUrl = imageUrl
        self.title = title
    }
    
}
