//
//  SearchResults.swift
//  PhotoGallery
//
//  Created by Sergey on 12.10.2021.
//

import Foundation

// подписана под протокол Decodable, чтоб компилятор смог переконвертировать из JSON файла в мою модель данных
struct SearchResults: Decodable {
    let total: Int
    let results: [UnsplashPhoto]
}

struct UnsplashPhoto: Decodable{
    let width: Int
    let height: Int
    let urls: [URLKing.RawValue: String]

    enum URLKing: String {
        case raw
        case full
        case regular
        case small
        case thumb
    }
}
