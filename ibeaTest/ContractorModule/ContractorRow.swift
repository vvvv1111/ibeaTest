//
//  ContractorRow.swift
//  ibeaTest
//
//  Created by Vladimir on 23.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContractorRow: View {
    var contractor: Contractor
    
    var body: some View {
        NavigationLink(destination:  ContractDetail(contractor: Contractor(id: 1, name: "name", phone: "phone", email: "email"))) {
            ZStack(alignment: .leading) {
                Rectangle()
                    .strokeBorder(Color.blue,lineWidth: 1)
                    .frame(width: 350, height: 100, alignment: .center)
                HStack {
                    ZStack {
                        Circle()
                            .strokeBorder(Color.blue,lineWidth: 1)
                            .frame(width: 65, height: 65, alignment: .center)
                        VStack {
                            Text("Add")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 15))
                            
                            Text("photo")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 15))
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Name: \(contractor.name)")
                            .font(.system(size: 20))
                            .foregroundColor(Color.blue)
                        
                        Text("Phone: \(contractor.phone)")
                            .font(.system(size: 20))
                            .foregroundColor(Color.blue)
                        
                        if contractor.email != nil {
                            Text("Email: \(contractor.email)")
                                .font(.system(size: 20))
                                .foregroundColor(Color.blue)
                        }
                        
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContractorRow_Previews: PreviewProvider {
    static var previews: some View {
        ContractorRow(contractor: Contractor(id: 1, name: "Poul", phone: "+79996284262", email: "sdfdsf"))
    }
}
