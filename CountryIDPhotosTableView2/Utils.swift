//
//  Utils.swift
//  CountryIDPhotosTableView2
//
//  Created by Audrey Li on 4/23/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[advance(self.startIndex, i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    //    subscript (r: Range<Int>) -> String {
    //        return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
    //    }
    
    subscript (index: Int) -> String? {
        if let char = Array(self).get(index) {
            return String(char)
        }
        
        return nil
    }
}
extension Array {
    func get (index: Int) -> Element? {
        
        //  If the index is out of bounds it's assumed relative
        func relativeIndex (index: Int) -> Int {
            var _index = (index % count)
            
            if _index < 0 {
                _index = count + _index
            }
            
            return _index
        }
        
        let _index = relativeIndex(index)
        return _index < count ? self[_index] : nil
    }
    
    func contains <T: Equatable> (items: T...) -> Bool {
        return items.all { self.indexOf($0) >= 0 }
    }
    
    func all (test: (Element) -> Bool) -> Bool {
        for item in self {
            if !test(item) {
                return false
            }
        }
        
        return true
    }
    func indexOf <U: Equatable> (item: U) -> Int? {
        if item is Element {
            return Swift.find(unsafeBitCast(self, [U].self), item)
        }
        
        return nil
    }
}