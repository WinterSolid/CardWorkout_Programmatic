//
//  CWButton.swift
//  Custom button for CardWorkout
//  CardWorkout_Programmatic
//
//  Created by ZakTan on 8/24/24.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(backgroundColor:UIColor, labelTitle:String){
        super.init(frame: .zero)// Set to zero,cause will set constaints
        self.backgroundColor = backgroundColor
        setTitle(labelTitle, for: .normal)
    }
    
    func configure(){
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 41,weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
    
