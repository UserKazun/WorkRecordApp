//
//  DataModel.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/31.
//

import SwiftUI
import RealmSwift

class DataModel: ObservableObject {
    @Published var title = ""
    @Published var desc = ""
    @Published var time = Date()
    
    @Published var workedEntities: [WorkedEntity] = []
    
    @Published var updateObject: WorkedEntity?
    
    init() {
        featchData()
    }
    
    func featchData() {
        guard let dbRef = try? Realm() else {
            return
        }
        
        let results = dbRef.objects(WorkedEntity.self)
        
        self.workedEntities = results.compactMap({ (workedEntity) -> WorkedEntity? in
            return workedEntity
        })
    }
    
    func addData() {
        if title == "" || desc == "" { return }
        
        let workedEntity = WorkedEntity()
        workedEntity.title = title
        workedEntity.desc = desc
        workedEntity.time = time
        
        guard let dbRef = try? Realm()  else {
            return
        }
        
        try? dbRef.write {
            guard let availableObject = updateObject else {
                dbRef.add(workedEntity)
                
                return
            }
            
            availableObject.title = title
            availableObject.desc = desc
            availableObject.time = time
        }
        
        featchData()
    }
    
    func deleteData(object: WorkedEntity) {
        guard let dbRef = try? Realm() else {
            return
        }
        
        try? dbRef.write {
            dbRef.delete(object)
            
            featchData()
        }
    }
    
    func setUpInitialData() {
        guard let updateData = updateObject else {
            return
        }
        
        title = updateData.title
        desc = updateData.desc
        time = updateData.time
    }
    
    func deInitData() {
        updateObject = nil
        title = ""
        desc = ""
        time = Date()
    }
}
