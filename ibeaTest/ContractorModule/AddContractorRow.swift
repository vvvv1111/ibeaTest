//
//  AddContractorRow.swift
//  ibeaTest
//
//  Created by Vladimir on 23.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct AddContractorRow: View {
    
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .strokeBorder(Color.gray,lineWidth: 1)
                .frame(width: 350, height: 100, alignment: .center)
            HStack {
                ZStack {
                    Circle()
                        .strokeBorder(Color.gray,lineWidth: 1)
                        .frame(width: 65, height: 65, alignment: .center)
                    VStack {
                        Text("Add")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 15))
                        
                        Text("photo")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 15))
                    }
                }
                
                VStack(alignment: .leading, spacing: 1) {
                    TextField("Fill name", text: $name)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 20))
                        .frame(width: 220, height: 23, alignment: .leading)
                    
                    TextField("Fill phone", text: $phone)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 20))
                        .frame(width: 220, height: 23, alignment: .leading)
                    
                    TextField("Fill email", text: $email)
                        .foregroundColor(Color.gray)
                        .font(.system(size: 20))
                        .frame(width: 220, height: 23, alignment: .leading)
                    
                }
                ZStack {
                    Button("+"){
                        DataProvider.shared.insert(id: 1, name: "self.name", phone:" self.phone", email: "self.email")
                                         print( DataProvider.shared.read())
                                     
                    }
                        .foregroundColor(Color.gray)
                    
                    Rectangle()
                    .strokeBorder(Color.gray,lineWidth: 1)
                        .frame(width: 50, height: 100, alignment: .trailing)
                }
                
//                Spacer()
            }
            
        }.padding()
    }
    
   
}

struct AddContractorRow_Previews: PreviewProvider {
    static var previews: some View {
        AddContractorRow()
    }
}

