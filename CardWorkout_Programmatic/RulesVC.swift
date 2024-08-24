//
//  RulesVC.swift
//  CardWorkout_Programmatic
//
//  Created by Zakee Tanksley on 8/24/24.
//

import UIKit

class RulesVC: UIViewController {
    
    let rulesTitleLabel = UILabel()
    let rulesDescriptionLabel = UILabel()
    let activityInfoLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureRulesTileLabel()
        configureRulesDesriptionLabel()

        
    }
    func configureRulesTileLabel() {
        view.addSubview(rulesTitleLabel)
        rulesTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesTitleLabel.text = "Rules"
        rulesTitleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        rulesTitleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            rulesTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            rulesTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureRulesDesriptionLabel() {
        view.addSubview(rulesDescriptionLabel)
       rulesDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
       rulesDescriptionLabel.text = "The value of each card represents the value of excercise you do.\n\n J = 11, K = 12, Q = 13, A = 14"
        rulesDescriptionLabel.font = .systemFont(ofSize: 25, weight: .semibold)
        rulesDescriptionLabel.textColor = .red
        rulesDescriptionLabel.textAlignment = .center
        rulesDescriptionLabel.lineBreakMode = .byWordWrapping
        rulesDescriptionLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesDescriptionLabel.topAnchor.constraint(equalTo: rulesTitleLabel.bottomAnchor, constant: 20),
            rulesDescriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesDescriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
}
