//
//  PokemonItem.swift
//  PokemonModule
//
//  Created by Amin faruq on 02/11/22.
//

import Foundation

public struct PokemonItem: Hashable {
    let name: String
    let url: String

    public init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

/*
public struct PokemonDetailItem: Hashable {
    let name: String
    let artwork: URL
    let moves: [PokemonMoves]
    let types: [PokemonTypes]

    public init(name: String, artwork: URL, moves: [PokemonMoves], types: [PokemonTypes]) {
        self.name = name
        self.artwork = artwork
        self.moves = moves
        self.types = types
    }
}

public struct PokemonTypes: Hashable {
    let type: PokemonType

    public init(type: PokemonType) {
        self.type = type
    }
}

public struct PokemonType: Hashable {
    let name: String

    public init(name: String) {
        self.name = name
    }
}

public struct PokemonMoves: Hashable {
    let move: PokemonMove

    public init(move: PokemonMove) {
        self.move = move
    }
}

public struct PokemonMove: Hashable {
    let name: String
    public init(name: String) {
        self.name = name
    }
}
*/
