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
        self.listUser.append(User(name: "Caio", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: true, identifier: 0))
        self.listUser.append(User(name: "Fabrício", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false, identifier: 1))
        self.listUser.append(User(name: "Alencar", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false, identifier: 2))
        self.listUser.append(User(name: "Jorge", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false, identifier: 3))
        self.listUser.append(User(name: "Felipe", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false, identifier: 4))
        self.listUser.append(User(name: "Robson", age: 30, profession: "Developer IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnableHeart: false, identifier: 5))
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
    
    public func exchangeHearState(_ user:User){
        
        if let row = self.listUser.firstIndex(where: {user.identifier == $0.identifier}) {
            self.listUser[row] = user
            
        }
        
    }
    
    

}
