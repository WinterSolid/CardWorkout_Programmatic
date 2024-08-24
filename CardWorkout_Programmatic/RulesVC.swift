//
//  RulesVC.swift
//  CardWorkout_Programmatic
//
//  Created by Zakee Tanksley on 8/24/24.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabel = UILabel()
    let rulesDesriptionLabel = UILabel()
    let activityInfoLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTileLabel()
        configureRulesDesriptionLabel()
        configureactivityInfoLabel()

        
    }
    func configureTileLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesDesriptionLabel() {
        view.addSubview(rulesDesriptionLabel)
        rulesDesriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesDesriptionLabel.text = """
                Value of card is
                excercise value
                
                J = 11 K = 12
                Q = 13 A = 14
                
                """
        rulesDesriptionLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        rulesDesriptionLabel.textAlignment = .center
        rulesDesriptionLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesDesriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesDesriptionLabel.widthAnchor.constraint(equalToConstant: 200),
            rulesDesriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func configureactivityInfoLabel() {
        view.addSubview(activityInfoLabel)
        activityInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        activityInfoLabel.text = """
        ♠️ = Push-ups
        ♥️ = Sit-ups
        ♣️ = Burpees
        ♦️ = Jumping Jacks
        """
        activityInfoLabel.font = .systemFont(ofSize: 25, weight: .medium)
                activityInfoLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            activityInfoLabel.topAnchor.constraint(equalTo: rulesDesriptionLabel.bottomAnchor, constant: 35),
                    activityInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                    activityInfoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
}
