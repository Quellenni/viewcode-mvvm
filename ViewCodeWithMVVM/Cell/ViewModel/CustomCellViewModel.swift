//
//  CustomCellViewModel.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 26/08/22.
//

import UIKit

enum DescriptionCustomCell:String{
    case name = "Nome: "
    case profession = "Profissão: "
    case salary = "Salário: "
    case age = "Age: "
}

class CustomCellViewModel{
    
    private var data:User
    
    init(data:User){
        self.data = data
    }
    
    public var getUser:User{
        return self.data
        
    }
    
   public var getName:String {
       return DescriptionCustomCell.name.rawValue + self.data.name
    }
    
    public var getProfession:String {
        return DescriptionCustomCell.name.rawValue + self.data.profession
     }
    
    public var getSalary:String {
        return DescriptionCustomCell.name.rawValue + self.data.salary
     }
    
    public var getAge:String {
        return DescriptionCustomCell.name.rawValue + String( self.data.age)
     }
    
    public var getUserImage:UIImage{
        return self.data.imageUser
     }
    
    public var getIsEnableHeart:Bool{
        return self.data.isEnableHeart
     }
    
    public func exchangeHearState(_ value:Bool){
        self.data.isEnableHeart = value
    }
    
    

}