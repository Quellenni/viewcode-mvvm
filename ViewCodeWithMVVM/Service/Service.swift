//
//  Service.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 30/08/22.
//

import UIKit
import Alamofire

protocol GenericService:AnyObject{
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}

enum Error:Swift.Error{
    case fileNotFound(name:String)
    case fileDecodingFailed(name:String,Swift.Error)
    case errorRequest(AFError)
}

protocol ServiceDelegate:GenericService{
    func getUserFromJson(fromFiledNamed name:String, completion: @escaping completion<UserResult?>)
    func getUser(completion: @escaping completion<UserResult?>)
}

class Service:ServiceDelegate{
    
    func getUser(completion: @escaping completion<UserResult?>) {
        
        let url:String = "https://run.mocky.io/v3/459fefac-0a43-4c3c-b1b1-3976e3f733a5"
        
        AF.request(url, method: .get).validate(statusCode: 200...299).responseDecodable(of: UserResult.self) {response in
            print(#function)
            debugPrint(response)
            
            switch response.result{
            case .success(let sucess):
                print("SUCESSO -> \(#function)")
                completion(sucess,nil)
            case .failure(let error):
                print("ERROR ->  \(#function)")
                completion(nil,Error.errorRequest(error))
            }
        }
    }

    
    func getUserFromJson(fromFiledNamed name: String, completion: @escaping completion<UserResult?>) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "json") else {return completion(nil, Error.fileNotFound(name: name))}
        
        
        do {
            let data = try Data(contentsOf: url)
            let user = try JSONDecoder().decode(UserResult.self, from: data)
            completion(user,nil)
        } catch  {
            completion(nil,Error.fileDecodingFailed(name: name, error))
        }
    }
}


