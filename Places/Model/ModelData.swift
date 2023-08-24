//
//  ModelData.swift
//  Places
//
//  Created by Justin Knight on 7/13/23.
//

import Foundation


final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter{$0.isFeatured}
    }
    
    var categories: [ String: [Landmark]] {
        Dictionary(grouping: landmarks, by: {$0.category.rawValue})
    }
    
}


func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle")
                   }
    do {
        data = try Data(contentsOf: file)
        
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
                   
}
