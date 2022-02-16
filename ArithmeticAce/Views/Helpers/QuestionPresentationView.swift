//
//  QuestionPresentationView.swift
//  ArithmeticAce
//
//  Created by William Robert Harrington on 2022-02-16.
//

import SwiftUI

struct QuestionPresentationView: View {
    
    // MARK: Stored properties
    
    let operation: String
    let firstValue: Int
    let secondValue: Int
    
    // MARK: Computed properties
    
    
    
    var body: some View {
        HStack {
            Text("\(operation)")
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("\(firstValue)")
                Text("\(secondValue)")
            }
        }
    }
}

struct QuestionPresentationView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionPresentationView(operation: "+",
                                 firstValue: Int.random(in: 1...12),
                                 secondValue: Int.random(in: 1...12))
    }
}
