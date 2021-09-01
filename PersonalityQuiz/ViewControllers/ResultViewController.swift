//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Alexey Efimov on 30.08.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultAnimal: UILabel!
    @IBOutlet var resultText: UILabel!
    
    var resultAnswers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        var animalInAnswers = [String]()
        
        resultText.text = "\(resultAnswers)"
       
        // MARK: - Filtering your Animal
        for (_, element) in resultAnswers.enumerated() {
            print("\(element.animal)\n")
            animalInAnswers.append("\(element.animal)")
        }
        
        let yourAnimal = animalInAnswers.reduce([String: Int]()) {
            var counts = $0
            counts[$1] = ($0[$1] ?? 0) + 1
            return counts
        }
        .max { $0.1 < $1.1 }?.0
    
        // MARK: - Choosing Animal
        if yourAnimal == "dog" {
            resultAnimal.text = "Вы - \(Animal.dog.rawValue)"
            resultText.text = "\(Animal.dog.definition)"
        } else if yourAnimal == "cat" {
            resultAnimal.text = "Вы - \(Animal.cat.rawValue)"
            resultText.text = "\(Animal.cat.definition)"
        } else if yourAnimal == "rabbit" {
            resultAnimal.text = "Вы - \(Animal.rabbit.rawValue)"
            resultText.text = "\(Animal.rabbit.definition)"
        } else {
            resultAnimal.text = "Вы - \(Animal.turtle.rawValue)"
            resultText.text = "\(Animal.turtle.definition)"
        }
    }
}


