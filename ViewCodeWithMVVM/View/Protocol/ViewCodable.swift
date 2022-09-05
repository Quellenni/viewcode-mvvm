//
//  ViewCodable.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 02/09/22.
//

import Foundation

protocol ViewCodable {
    func setup()
    func setupViews()
    func setupAnchors()
    func setupLayouts()
}

extension ViewCodable {
    func setup() {
        setupViews()
        setupAnchors()
        setupLayouts()
    }
    
    func setupLayouts() {}
}
