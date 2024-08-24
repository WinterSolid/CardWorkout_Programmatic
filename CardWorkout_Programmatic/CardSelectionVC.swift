//
//  CardSelectionVC.swift
//  CardWorkout_Programmatic
//
//  Created by Zakee Tanksley on 8/24/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    var cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, labelTitle: "Stop")
    let resetButton = CWButton(backgroundColor: .systemOrange, labelTitle: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemYellow, labelTitle: "Rules")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureCardImageView()
        
    }
    
    func configureCardImageView(){
        // The view to be added, this view appears on top of any other subviews.
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "Hearts_Queen_black")
        
        //Contraints
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -75)
        ]) //equiv to using using constaints tool
    }
}
