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
    
    // 1. Передать сюда массив с ответами +
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результат в соответствии с этим животным
    // 4. Избавиться от кнопки возврата на предыдущий экран +

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        resultText.text = "\(resultAnswers)" // ответы переданы
        
        var animalInAnswers = [String]()
        for (index, element) in resultAnswers.enumerated() {
            print("\(index) следом \(element)\n")
            animalInAnswers.append("\(element)")
    }
        
        print("тото \(animalInAnswers)")
    }
}

