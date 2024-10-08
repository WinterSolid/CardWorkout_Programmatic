//
//  CardSelectionVC.swift
//  CardWorkout_Programmatic
//
//  Created by Zakee Tanksley on 8/24/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    var cardImageView = UIImageView()
    let stopButton = CWButton(color: .systemRed, labelTitle: "Stop")
    let resetButton = CWButton(color: .systemGreen, labelTitle: "Reset")
    let rulesButton = CWButton(color: .systemOrange, labelTitle: "Rules")
    var cards = CardDeck.gameImageValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
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
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor,constant: 30),
        ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
            
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
            
        ])
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard() {
        cardImageView.image = cards.randomElement()
    }
    
    @objc func stopTimer() {
        timer.invalidate()
    }
    
    @objc func resetTimer(){
        stopTimer()
        startTimer()
    }
    
    @objc func presentRulesVC(){
        present(RulesVC(), animated: true)
    }
}
