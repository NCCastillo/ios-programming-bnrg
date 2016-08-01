//
//  ImageStore.swift
//  Homepwner
//
//  Created by Nestor Castillo on 7/31/16.
//  Copyright © 2016 Nestor Castillo. All rights reserved.
//

import UIKit

class ImageStore {
    let cache = NSCache()
    
    func setImage(image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key)
    }

    func imageForKey(key: String) -> UIImage? {
        return cache.objectForKey(key) as? UIImage
    }
    
    func deleteImageForKey(key: String) {
        cache.removeObjectForKey(key)
    }
}
