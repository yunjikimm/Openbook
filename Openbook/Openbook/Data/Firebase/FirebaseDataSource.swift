//
//  QuestionViewModel.swift
//  Openbook
//
//  Created by yunjikim on 5/16/24.
//

import Foundation
import FirebaseFirestore

final class FirebaseDataSource {
    private let subjectRef = Firestore.firestore().collection("Subject")
    private let questionGroupRef = Firestore.firestore().collectionGroup("Question")
    
    func getSubjectList() async -> [Subject] {
        do {
            let documents = try await self.subjectRef.order(by: "subject", descending: false).getDocuments().documents
            return try documents.compactMap { try $0.data(as: Subject.self) }
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    func getQuestionList(documentId: String) async -> [Question] {
        do {
            let questionRef = self.subjectRef.document(documentId).collection("Question")
            let documents = try await questionRef.getDocuments().documents
            return try documents.compactMap{ try $0.data(as: Question.self) }
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    func getRandomQuestionList() async -> [Question] {
        do {
            let documents = try await questionGroupRef.getDocuments().documents
            return try documents.compactMap { try $0.data(as: Question.self) }
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
}
