//
//  TimetableViewModel.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI
import CoreData

final class TimetableViewModel: ObservableObject {
    
    @Published var results: [String] = ["Pending", "Winning", "Refund", "Losing"]
    @Published var curResult: String = ""
    @Published var resForAdd: String = ""

    @AppStorage("categories") var categories: [String] = []
    @Published var addCat: String = ""
    @Published var currCat: String = ""

    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isAddCategory: Bool = false

    @Published var mEv: String = ""
    @Published var mT1: String = ""
    @Published var mT2: String = ""
    @Published var mPT1: String = ""
    @Published var mPT2: String = ""
    @Published var mDate: Date = Date()
    @Published var mTime: Date = Date()
    @Published var mBid: String = ""
    @Published var mCoef: String = ""
    @Published var mRes: String = ""
    @Published var mAmount: String = ""
    @Published var mCat: String = ""

    @Published var matches: [MatModel] = []
    @Published var selectedMatch: MatModel?

    func addMatch() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "MatModel", into: context) as! MatModel

        loan.mEv = mEv
        loan.mT1 = mT1
        loan.mT2 = mT2
        loan.mPT1 = mPT1
        loan.mPT2 = mPT2
        loan.mDate = mDate
        loan.mTime = mTime
        loan.mBid = mBid
        loan.mCoef = mCoef
        loan.mRes = mRes
        loan.mAmount = mAmount
        loan.mCat = mCat

        CoreDataStack.shared.saveContext()
    }

    func fetchMatchs() {

        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<MatModel>(entityName: "MatModel")

        do {

            let result = try context.fetch(fetchRequest)

            self.matches = result

        } catch let error as NSError {

            print("catch")

            print("Error fetching persons: \(error), \(error.userInfo)")

            self.matches = []
        }
    }
}

