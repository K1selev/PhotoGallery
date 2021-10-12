//
//  NetworkService.swift
//  PhotoGallery
//
//  Created by Sergey on 11.10.2021.
//

import Foundation

class NetworkService {
    //построение запроса данных по URL
    //searchTerm переменная из поисковой строки
    func request(searchTerm: String, completion: @escaping (Data?, Error?) -> Void) {
        let parameters = self.prepareParameters(searchTerm: searchTerm)
        let url = self.url(params: parameters)
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = prepareHeader()
        request.httpMethod = "get"
        let task = createDataTask(from: request, completion: completion)
        task.resume()
        //print(url)
    }
    
    private func prepareHeader() -> [String: String]? {
        var headers = [String: String]()
        headers["Authorization"] = "Client-ID EG5csfWXoBwc7UMzFu4Aj_YNHIhLQ3TCigAFp9u__38"
        return headers
    }
    
    private func prepareParameters(searchTerm: String?) -> [String: String] {
        var parameters = [String: String]()
        parameters["query"] = searchTerm
        parameters["page"] = String(1)
        parameters["per_page"] = String(30)
        return parameters
    }
    
    private func url(params: [String: String]) -> URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.unsplash.com"
        components.path = "/search/photos"
        components.queryItems = params.map {URLQueryItem(name: $0, value: $1)}
        return components.url!
    }
    
    private func createDataTask(from request: URLRequest, completion: @escaping (Data? , Error?) -> Void) -> URLSessionDataTask {
        return URLSession.shared.dataTask(with: request) { (data, response, error) in
            //данные могут прийти в асинхронном потоке, чтобы вернуть в основном потоке пропишем
            DispatchQueue.main.async {
                completion(data, error)
            }
        }
    }
}
