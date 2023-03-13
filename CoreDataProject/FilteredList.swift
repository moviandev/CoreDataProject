//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Matheus Viana on 11/03/23.
//

import CoreData
import SwiftUI

enum PredicateType {
    case beginsWith
}

struct FilteredList<T: NSManagedObject, Content: View>: View {
    @FetchRequest var fetchRequest: FetchedResults<T>
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequest, id: \.self) { item in
            self.content(item)
        }
    }
    
    init(filterKey: String, predicateFilter: PredicateType, filterValue: String, sortDescriptors: [SortDescriptor<T>], @ViewBuilder content: @escaping (T) -> Content) {
        _fetchRequest = FetchRequest<T>(sortDescriptors: sortDescriptors, predicate: NSPredicate(format: "%K \(predicateFilter) %@", filterKey, filterValue))
        self.content = content
    }
}
