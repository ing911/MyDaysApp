//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Пользователь on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var infoLabel: UILabel! // лейбл с текстом
    
    //@IBOutlet weak private var resultButton: UIButton! // св-во чтобы скруглить кнопку
    
    // переменная с пустой строкой, в которой будем хранить вычисленные дни в формате строки
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //resultButton.layer.cornerRadius = 12 // скруглили кнопку по бокам
    }

    // datePicker action - выбираем дату рождения
    @IBAction private func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now // создаём диапазон от выбранной даты до текущей
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        // форматируем диапазон до дней и передаём в переменную numberOfDays
    }
    
    @IBAction private func resultButtonTapped() {
        // по нажатию на кнопку в лейбле появляется текст и передаётся отформатированное число дней
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)!"
    }
}

