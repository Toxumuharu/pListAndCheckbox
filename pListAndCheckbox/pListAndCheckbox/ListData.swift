//
//  ListData.swift
//  pListAndCheckbox
//
//  Created by Tomoharu Kawata on 2020/02/28.
//  Copyright © 2020 Tomoharu Kawata. All rights reserved.
//

import Foundation

struct Listdata: Identifiable {
    var id = UUID()
    var task: String
}

let listData = [
    Listdata(task: "task 1"),
    Listdata(task: "task 2"),
    Listdata(task: "task 3"),
    Listdata(task: "task 4")
]
