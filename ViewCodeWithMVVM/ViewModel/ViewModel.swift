//
//  ViewModel.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 25/08/22.
//

import UIKit

class ViewModel{
    
   private var listUser: [User] = []
    
    init(){
        self.configArrayUser()
    }
    
    private func configArrayUser() {
        self.listUser.append(User(name: "Caio", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true))
        self.listUser.append(User(name: "Fabrício", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Alencar", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Jorge", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Felipe", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Robson", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Caio", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Fabrício", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Alencar", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Jorge", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Felipe", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
        self.listUser.append(User(name: "Robson", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false))
    }
    
    public var numberOfRows: Int{
        return self.listUser.count
    }
    
    public func loudCurrentUser(indexPath:IndexPath)-> User{
        return self.listUser[indexPath.row]
    }
    
    public func getName(indexPath:IndexPath)-> String{
        return self.listUser[indexPath.row].name
    }
    
    
    
    

}
