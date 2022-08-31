//
//  Pessoa.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 25/08/22.
//

import Foundation
import UIKit

struct UserResult:Codable{
    var group:[User]
}

struct User:Codable {
    var name: String
    var age: Int
    var profession: String
    var salary: String
    var imageUser: String
    var isEnableHeart: Bool
    var identifier:Int
}
