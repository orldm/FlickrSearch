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
    
    
}
