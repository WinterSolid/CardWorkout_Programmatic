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
    let resetButton = CWButton(backgroundColor: .systemGreen, labelTitle: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemOrange, labelTitle: "Rules")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
        
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
    func configureStopButton() {
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor,constant: 30),
            
        ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
            
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        NSLayoutConstraint.activate([
           rulesButton.widthAnchor.constraint(equalToConstant: 115),
           rulesButton.heightAnchor.constraint(equalToConstant: 50),
           rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
           rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
            
        ])
    }
}
