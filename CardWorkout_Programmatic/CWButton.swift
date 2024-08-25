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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(color:UIColor, labelTitle:String){
        super.init(frame: .zero)
        
        configuration = .tinted()
        configuration?.title = labelTitle
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
    
