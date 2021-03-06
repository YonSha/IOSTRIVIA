//
//  PostService.swift
//  MyIOSWhatsappCloneChat
//
//  Created by pc on 15/08/2019.
//  Copyright © 2019 yonsProject. All rights reserved.
//

import Foundation


import UIKit
import FirebaseStorage
import FirebaseDatabase

struct PostService {
    
    
    static func create(for image: UIImage) {
        let imageRef = Storage.storage().reference().child("test_image.jpg")
        StorageService.uploadImage(image, at: imageRef) { (downloadURL) in
            guard let downloadURL = downloadURL else {
                return
            }
            
            let urlString = downloadURL.absoluteString
            print("image url: \(urlString)")
        }
    }
    
    
    
    
}
