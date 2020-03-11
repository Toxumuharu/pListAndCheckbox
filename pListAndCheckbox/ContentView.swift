//
//  ContentView.swift
//  pListAndCheckbox
//
//  Created by Tomoharu Kawata on 2020/02/26.
//  Copyright © 2020 Tomoharu Kawata. All rights reserved.
//

//see https://yutailang0119.hatenablog.com/entry/delatable-table-with-textfield-on-swiftui
import SwiftUI

struct ContentView: View {
    @State private var tasks: [String] = ["Your task 1", "Your task 2", "Your task 3"]
    
    var body: some View {
        VStack {
            EditButton()
            List {
                ForEach(tasks, id: \.self) { task in
                    HStack{
                        CheckView(title: "")
                        EditorView(container: self.$tasks, index: self.tasks.firstIndex(of: task)!, text: task)
                    }
                }
                .onDelete { indexSet in
                    self.tasks.remove(atOffsets: indexSet)
                }
            }
        }
    }
}

struct EditorView : View {
    var container: Binding<[String]>
    var index: Int
    
    @State var text: String
    
    var body: some View {
        TextField("", text: self.$text, onCommit: {
            self.container.wrappedValue[self.index] = self.text
        })
    }
}
