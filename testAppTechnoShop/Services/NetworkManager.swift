//
//  NetworkManager.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 12.12.2022.
//

import Foundation




class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let apiExplorer = "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175"
    private let apiCart = "https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149"
    private let apiProductDetails = "https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5"
    
    private init() {}
    
    
    func fetchDataExplorer(completion: @escaping (ProductsListModel) -> Void) {
        guard let url = URL(string: apiExplorer) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print("URLSession error: \(error?.localizedDescription ?? "No Discription")")
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let products = try decoder.decode(ProductsListModel.self, from: data)
                DispatchQueue.main.async {
                    completion(products)
                }
            } catch let error {
                print("Error serialization json: ", error)
            }
        }.resume()
    }
    
    
    func fetchDataCart(completion: @escaping (CartModel) -> Void) {
        guard let url = URL(string: apiCart) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print("URLSession error: \(error?.localizedDescription ?? "No Discription")")
                return
            }
            do {
                let decoder = JSONDecoder()
                let cart = try decoder.decode(CartModel.self, from: data)
                DispatchQueue.main.async {
                    completion(cart)
                }
            } catch let error {
                print("Error serialization json: ", error)
            }
        }.resume()
    }
    

    func fetchDataProductDetails(completion: @escaping (ProductDetailsModel) -> Void) {
        guard let url = URL(string: apiProductDetails) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print("URLSession error: \(error?.localizedDescription ?? "No Discription")")
                return
            }
            do {
                let decoder = JSONDecoder()
                let productDetails = try decoder.decode(ProductDetailsModel.self, from: data)
                DispatchQueue.main.async {
                    completion(productDetails)
                }
            } catch let error {
                print("Error serialization json: ", error)
            }
        }.resume()
    }
}
