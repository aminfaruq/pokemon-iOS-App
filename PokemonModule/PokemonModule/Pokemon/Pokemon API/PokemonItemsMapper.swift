//
//  PokemonItemMapper.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public final class PokemonItemMapper {
    private struct Root: Decodable {
        private let count: Int
        private let next: String?
        private let previous: String?
        private let results: [RemotePokemonItem]
        
        private struct RemotePokemonItem: Decodable {
            let name: String
            let url: String
        }
        
        var items: [PokemonItem] {
            results.map { PokemonItem(name: $0.name, url: $0.url) }
        }
    }
    
    public enum Error: Swift.Error {
        case invalidData
    }
    
    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [PokemonItem] {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw Error.invalidData
        }
        return root.items
    }
}
