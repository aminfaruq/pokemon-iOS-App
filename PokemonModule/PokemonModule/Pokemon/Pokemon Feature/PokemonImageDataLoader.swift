//
//  PokemonImageDataLoader.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public protocol CategoryImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
