//
//  ViewModel.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 25/08/22.
//

import UIKit

protocol ViewModelDelegate:AnyObject{
    func sucessRequest()
    func errorRequest()
}

class ViewModel{
    
    private let service:Service = Service()
    private var listUser: [User] = []
    
    private weak var delegate:ViewModelDelegate?
    
    public func delegate(delegate:ViewModelDelegate?){
        self.delegate = delegate
    }
    
    public func fetchAllRequest(){
        service.getUserFromJson(fromFiledNamed: "user") { sucess,  error in
            if let _sucess = sucess{
                self.listUser = _sucess.group
                self.delegate?.sucessRequest()
            }else{
                self.delegate?.errorRequest()
            }
            
        }
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
