//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by Екатерина Батеева on 10.12.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet var youLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    
    // 1. Передать сюда массив с ответами
    var answerChosens: [Answer] = []
    
    // 2. Определить наиболее часто встречающийся тип животного
    func typeAnimal(){
        var dog = 0
        var cat = 0
        var rabbit = 0
        var turtle = 0
        
        for answerChosen in answerChosens {
            if answerChosen.type == AnimalType.dog { dog += 1}
            if answerChosen.type == AnimalType.cat { cat += 1}
            if answerChosen.type == AnimalType.rabbit { rabbit += 1}
            if answerChosen.type == AnimalType.turtle { turtle += 1}
            print(answerChosen)
        }
        descriptionMoreLess(first: dog, second: cat, third: rabbit, fourth: turtle)
    }
    
    func descriptionMoreLess(first: Int, second: Int, third: Int, fourth: Int) {
        if first == max(first, second, third, fourth) {
            youLabel.text = "Вы - \(AnimalType.dog.rawValue)!"
        }
        if second == max(first, second, third, fourth) {
            youLabel.text = "Вы - \(AnimalType.cat.rawValue)!"
        }
        if third == max(first, second, third, fourth) {
            youLabel.text = "Вы - \(AnimalType.rabbit.rawValue)!"
        }
        if fourth == max(first, second, third, fourth) {
            youLabel.text = "Вы - \(AnimalType.turtle.rawValue)!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3. Отобразить результаты на экране
        typeAnimal()
        
        // 4. Избавиться от кнопки возврата на предыдущий экран
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
