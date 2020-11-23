//
//  ContractorList.swift
//  ibeaTest
//
//  Created by Vladimir on 23.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContractorList: View {
    var body: some View {
        VStack {
            List{
                ContractorRow(contractor: Contractor(id: 1, name: "fsd", phone: "fdsf", email: "nil"))
//                ForEach (Data, id: \.self) { record in
//                }
            }
        }
        
    }
}

struct ContractorList_Previews: PreviewProvider {
    static var previews: some View {
        ContractorList()
    }
}
