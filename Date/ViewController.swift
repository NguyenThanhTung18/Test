//
//  ViewController.swift
//  Date
//
//  Created by Tùng Thiện on 12/01/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configDate()
        date3()
    }
    func configDate() {
        let date = Date()
        print(date)
        let date2 = Date.init(timeIntervalSinceNow: -86400)
        print(date2)
        
        let calenda = Calendar.current
        var components = DateComponents()
        components.day = 18
        components.month = 05
        components.year = 2000
        components.hour = 0
        components.minute = 0
        let newDate = calenda.date(from: components)
        print(newDate ?? "")
        
        let currenDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .full
        dateFormat.timeStyle = .full
        let dateString = dateFormat.string(from: currenDate)
        print(dateString)
        
    }
    func date3() {
        let date3 = Calendar.current
        var compos = DateComponents()
        compos.day = 18
        compos.month = 12
        compos.year = 2014
        compos.hour = 5
        compos.minute = 6
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .full
        dateFormat.timeStyle = .full
        guard let newdate = date3.date(from: compos) else {
            return
        }
        let newDateString = dateFormat.string(from: newdate)
        print(newDateString)
    }
}

