//
//  main.swift
//  hw_6
//
//  Created by Антон Баландин on 9.08.23.
//

import Foundation

//Задание
//Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками.
//Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе.
//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.


struct Employee {
    let name: String
    let salary: Int
    let title: Title
    
    enum Title {
        case cashier
        case cook
    }
}

class Pizzeria {
    var employee: [Employee]
    var tables: [Table]?
    
    init(employee: [Employee]) {
        self.employee = employee
    }
}

class Table {
    var totalNumber: Int
    var numbers: Int?
    var pizzeria: [Pizzeria]?
    var canISeat: Bool {
        totalNumber >= numbers ?? 0
    }
    
    init(totalNumber: Int) {
        self.totalNumber = totalNumber
    }
    
    func canSeats(nummbers: Int) -> Bool {
        totalNumber >= nummbers
    }
}

let employee1 = Employee(name: "Ivan", salary: 1000000, title: .cashier)
let employee2 = Employee(name: "Den", salary: 1000000, title: .cook)

var pizzeria1 = Pizzeria(employee: [employee1, employee2])

let table1 = Table(totalNumber: 7)

print(table1.canISeat)

print(table1.canSeats(nummbers: 6))
