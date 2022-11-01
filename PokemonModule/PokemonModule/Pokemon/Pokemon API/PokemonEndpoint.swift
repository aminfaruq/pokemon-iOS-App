//
//  PokemonEndpoint.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public enum PokemonEndpoint {
    case getPokemonList
    case getPokemonDetail(String)
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .getPokemonList:
            return baseURL.appendingPathComponent("/pokemon")

        case let .getPokemonDetail(name):
            return baseURL.appendingPathComponent("/pokemon/\(name)")
        }
    }
}
