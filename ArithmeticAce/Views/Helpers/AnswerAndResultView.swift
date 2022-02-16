//
//  AnswerAndResultView.swift
//  ArithmeticAce
//
//  Created by William Robert Harrington on 2022-02-16.
//

import SwiftUI

struct AnswerAndResultView: View {
    
    // MARK: Stored properties
    
    let answerChecked: Bool
    let answerCorrect: Bool
    
    @Binding var inputGiven: String
    
    // MARK: Computed properties
    
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                //        CONDITION      true  false
                    .opacity(answerCorrect == true ? 1.0 : 0.0)
                
                Image(systemName: "x.square")
                    .foregroundColor(.red)
                //        CONDITION1         AND     CONDITION2         true  false
                //       answerChecked = true     answerCorrect = false
                    .opacity(answerChecked == true && answerCorrect == false ? 1.0 : 0.0)
            }
            
            Spacer()
            
            TextField("",
                      text: $inputGiven)
                .multilineTextAlignment(.trailing)
        }
    }
}

//struct AnswerAndResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnswerAndResultView()
//    }
//}
