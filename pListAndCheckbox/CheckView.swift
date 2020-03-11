//
//  CheckView.swift
//  pListAndCheckbox
//
//  Created by Tomoharu Kawata on 2020/02/26.
//  Copyright © 2020 Tomoharu Kawata. All rights reserved.
//

import Foundation
import SwiftUI

struct CheckView: View {
    @State var isChecked:Bool = false
    var title:String
    func toggle(){isChecked = !isChecked}
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                    .foregroundColor(isChecked ? .red : .blue)
                Text(title)
            }
        }
    }
}
