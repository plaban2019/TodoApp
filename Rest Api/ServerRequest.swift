//
//  ServerRequest.swift
//  Rest Api
//
//  Created by plaban dwivedy on 17/09/21.
//

import Foundation

struct ServerRequest {
    func makeApiCall(completionHandler: @escaping([ToDo]) -> Void){
        
        let urlString = "https://jsonplaceholder.typicode.com/todos"
        let url = URL(string: urlString)
        let urlRequest = URLRequest(url: url!)
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            DispatchQueue.main.async {
            do{
                let json = try JSONDecoder().decode([ToDo].self, from: data!)
                print(json)
                completionHandler(json)
            }catch{
                print(error.localizedDescription)
            }
            
          }
        }
        .resume()
    
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//
//        }
        
    }
}
