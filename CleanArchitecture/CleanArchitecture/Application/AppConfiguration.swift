//
//  AppConfiguration.swift
//  CleanArchitecture
//
//  Created by 최정민 on 2022/04/30.
//

import Foundation

enum AppConfiguration {
    static let apiBaseUrl = "https://www.googleapis.com/books/v1/volumes?q="
}

struct APIConfiguration {
    let baseURL: String
}

enum APIURL {
    static func getBookURL(query: BooksRequestDTO) -> URL? {
        let path = "\(query.query)&startIndex=\(query.startIndex)&maxResults=\(query.maxResults)"
        return URL(string: AppConfiguration.apiBaseUrl + path)
    }
}