//
//  OrderedDictionary.swift
//  FlickrSearch
//
//  Created by Dmitri Orlov on 12/30/14.
//  Copyright (c) 2014 Razeware. All rights reserved.
//

import Foundation

struct OrderedDictionary<KeyType: Hashable, ValueType> {
    
    typealias ArrayType = [KeyType]
    typealias DictionaryType = [KeyType: ValueType]
    
    var array = ArrayType()
    var dictionary = DictionaryType()
    
    mutating func insert(value: ValueType, forKey key: KeyType, atIndex index: Int) -> ValueType? {
        
        var adjustedIndex = index
        let existingValue = self.dictionary[key]
        if existingValue != nil {
            let existingIndex = find(self.array, key)!
            if existingIndex < index {
                adjustedIndex--
            }
            self.array.removeAtIndex(existingIndex)
        }
        self.array.insert(key, atIndex: adjustedIndex)
        self.dictionary[key] = value
        return existingValue
    }
    
    
}
