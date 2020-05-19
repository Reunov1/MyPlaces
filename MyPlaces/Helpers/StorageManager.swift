//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Александр Реунов on 24.03.2020.
//  Copyright © 2020 Александр Реунов. All rights reserved.
//

import RealmSwift
import EasyPeasy

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
        
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
    
}
