//
//  QuestionViewModel.swift
//  QUIZMVVM
//
//  Created by rafiul hasan on 19/8/23.
//

import Foundation

class QuestionViewModel {
    
    var questionData: DataModel?
    private let sourcesURL = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")!
    
    func apiToGetQuestionData(completion : @escaping () -> ()) {
        URLSession.shared.dataTask(with: sourcesURL) { [weak self] (data, urlResponse, error) in
            if let data = data {
                let empData = try! JSONDecoder().decode(DataModel.self, from: data)
                self?.questionData = empData
                completion()
            }
        }.resume()
    }
}
