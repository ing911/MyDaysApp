//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Пользователь on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var infoLabel: UILabel!
    //@IBOutlet weak private var resultButton: UIButton! // св-во чтобы скруглить кнопку
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 12 // скруглили кнопку по бокам
    }

    @IBAction private func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction private func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)!"
    }
}

