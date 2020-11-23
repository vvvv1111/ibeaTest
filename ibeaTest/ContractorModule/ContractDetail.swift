//
//  ContractDetail.swift
//  ibeaTest
//
//  Created by Vladimir on 23.11.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContractDetail: View {
    @State var isShaking: Bool = false
    
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    
    var contractor: Contractor
    var body: some View {
        VStack{
            ZStack(alignment: .bottom) {
                Button(isShaking ? "Save" : "Change"){
                    self.isShaking.toggle()
                    if self.isShaking{
                        //сохранить в дб
                    
                    }
                }
                .offset(x: 150, y:-220)
                
                Rectangle()
                      .strokeBorder(Color.blue,lineWidth: 1)
                    .frame(height: 250)
                
                
                ZStack {
                    Circle()
                        .strokeBorder(Color.blue,lineWidth: 1)
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.white)
                    .offset(y: isShaking ? -20 : 0)
                    .animation(Animation.default.repeatCount(3))
                    
                    
                    VStack(spacing: -5) {
                        Text("Add")
                            .foregroundColor( Color.blue.opacity(0.7))
                            .font(.system(size: 23))
                        .offset(x: isShaking ? -10 : 0)
                        .animation(Animation.default.repeatCount(3))
                        
                        Text("photo")
                            .foregroundColor( Color.blue.opacity(0.7))
                            .font(.system(size: 23))
                        .offset(y: isShaking ? -10 : 0)
                        .animation(Animation.default.repeatCount(3))
                        
                    }
                }
            }
            VStack{
                Text(contractor.name)
                .foregroundColor( Color.blue.opacity(0.7))
                .font(.system(size: 30))
                .fontWeight(.light)
                .offset(x: isShaking ? -10 : 0)
                .animation(Animation.default.repeatCount(3))

                
                HStack{
                    Text(contractor.phone)
                    .foregroundColor( Color.blue.opacity(0.7))
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .offset(y: isShaking ? -10 : 0)
                    .animation(Animation.default.repeatCount(3))

                    
                    Text(contractor.email)
                    .foregroundColor( Color.blue.opacity(0.7))
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        .offset(y: isShaking ? 10 : 0)
                        .animation(Animation.default.repeatCount(3))
                    
                    
                                        Text(contractor.name)
//                    TextField("\(contractor.name)", text: $name)
                        .foregroundColor( Color.blue.opacity(0.7))
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        .offset(x: isShaking ? 10 : 0)
                        .animation(Animation.default.repeatCount(3))
                }
            }
            Spacer()
        }
    }
}


struct ContractDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContractDetail(contractor: Contractor(id: 1, name: "name", phone: "phone", email: "email"))
    }
}

